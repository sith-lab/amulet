"""
File: Executor Interface

Copyright (C) Microsoft Corporation
SPDX-License-Identifier: MIT
"""
import subprocess
import os.path
import csv
import numpy as np
from collections import Counter
from typing import List, Tuple, IO
from interfaces import CombinedHTrace, Input, TestCase, Executor, Optional
import random
import time
from pathlib import Path
import toml

from config import CONF, ConfigException
from service import LOGGER, STAT, rmtree_if_exists
import numpy as np
from glob import glob
from os import system
from subprocess import run
from dataclasses import dataclass
from ipc_orchestration import Gem5IPCOrchestration, Gem5Crash
import json
import os
import xxhash
import shutil
from io import StringIO, BytesIO

def assemble_and_link(infile, tmpfile, outfile):
    """
    Assemble the test case into a binary
    """
    # run(f"as -g -O0 -mmnemonic=intel -msyntax=intel {infile} -o {tmpfile}", shell=True, check=True, capture_output=True)
    run(f"as -g -mmnemonic=intel -msyntax=intel {infile} -o {tmpfile}", shell=True, check=True, capture_output=True) # Works with InvisiSpec
    run(f"objcopy --remove-section .note.gnu.property {tmpfile}", shell=True, check=True, capture_output=True)
    run(f"ld {tmpfile} -o {outfile}  -T{os.path.dirname(__file__)}/link1.ld", shell=True, check=True, capture_output=True)


def write_to_pseudo_file(value, path: str) -> None:
    subprocess.run(f"sudo bash -c 'echo -n {value} > {path}'", shell=True, check=True)


def write_to_sysfs_file_bytes(value: bytes, path: str) -> None:
    with open(path, "wb") as f:
        f.write(value)

def copy_file_if_exists(source: str, dest: str) -> None:
    try:
        shutil.copyfile(source, dest)
        return True
    except FileNotFoundError:
        return False

class InMemoryDebugTextFile(StringIO):
    def __init__(self, target_dict, target_key):
        self.target_dict = target_dict
        self.target_key = target_key
        super().__init__()
    def close(self):
        self.target_dict[self.target_key] = self.getvalue().encode()
        super().close()
    def __exit__(self, exc_type, exc_value, traceback):
        self.close()

class InMemoryDebugBinaryFile(BytesIO):
    def __init__(self, target_dict, target_key):
        self.target_dict = target_dict
        self.target_key = target_key
        super().__init__()
    def close(self):
        self.target_dict[self.target_key] = self.getvalue()
        super().close()
    def __exit__(self, exc_type, exc_value, traceback):
        self.close()

class X86Gem5(Executor):
    CACHELINE_SIZE: int = 64 # Bytes
    MAX_TICKS: int = 1000000000
    
    # Set in constructor
    code_segment : str
    WORKING_MEMORY_SIZE: int 
    OVERFLOW_REGION_SIZE: int
    ASSIST_REGION_SIZE: int
    MAIN_REGION_SIZE: int
    
    def __init__(self):
        LOGGER.dbg_fuzzer(f"Using {CONF.input_main_region_size // 4096} pages in main region")
        self.MAIN_REGION_SIZE: int = CONF.input_main_region_size # Bytes
        self.ASSIST_REGION_SIZE: int = CONF.input_assist_region_size
        self.OVERFLOW_REGION_SIZE: int = 4096
        
        # Must be larger than sandbox
        self.WORKING_MEMORY_SIZE = 0x10000000 # 256MB, sync with link1.ld
        # LOGGER.dbg_fuzzer(f"self.WORKING_MEMORY_SIZE {self.WORKING_MEMORY_SIZE}, self.MAIN_REGION_SIZE {self.MAIN_REGION_SIZE}, self.ASSIST_REGION_SIZE {self.ASSIST_REGION_SIZE}")
        
        self.gem5_location = CONF.gem5_location
        self.gem5_build = CONF.gem5_binary
        self.gem5_output_location = CONF.gem5_output_location
        # self.gem5_flags = CONF.gem5_flags
        self.test_case_path = CONF.gem5_test_case_path
        self.trace_mode = CONF.gem5_trace_mode
        self.batch_size = CONF.gem5_batch_size
        self.orchestration = CONF.gem5_orchestration
        if any('memory_trace' in source for source in CONF.gem5_attacker_mode['sources']):
            raise ValueError('memory_trace attacker mode is no longer supported')
        
        allocated_working_region = int(0x502000)
        # Must init main_region comfortably above working region to catch any & all speculative underflows!
        self.sandbox_base = allocated_working_region + (self.WORKING_MEMORY_SIZE // 2)
        self.lower_overflow_base = self.sandbox_base
        self.main_region = self.lower_overflow_base + self.OVERFLOW_REGION_SIZE
        self.assist_region_base = self.main_region + self.MAIN_REGION_SIZE
        self.upper_overflow_base = self.assist_region_base + self.ASSIST_REGION_SIZE
        
        self.stack_base = self.main_region + self.MAIN_REGION_SIZE - 8
        self.code_base = int(0x401000)
        self.main_base = int(0x4010e7)
        self.gem5_attacker_mode = CONF.gem5_attacker_mode
        rmtree_if_exists(CONF.gem5_checkpoint)
        Path('{loc}'.format(loc=CONF.gem5_checkpoint)).mkdir(parents = True, exist_ok=True)
        self.base_input = None
        self.last_case_address = None
        self.priming = False
        self.types = []
        self.debug_files = {}
        self.last_tick = -1
        self.set_cmd()
        if self.orchestration == "ipc":
            self.ipc = Gem5IPCOrchestration()
            # self.ipc.restart_gem5(self.get_cmd("", False))

    def open_debug_file(self, filename: str, mode: str = "r") -> IO:
        '''
        Either returns a file or an in-memory pseudofile (StringIO/BytesIO object) which
        can be saved to a file later if a violation is found.

        The purpose of this function is to reduce disk I/O compared to open(),
        since disk contention was becoming a problem for parallel runs.

        If --debug is enabled, this always just calls open().
        If a file opened for reading is not found in the in-memory filesystem,
        this just calls open().
        Otherwise, an in-memory file is created.
        '''
        if CONF.debug or (mode[0] == 'r' and filename not in self.debug_files):
            return open(filename, mode)
        elif mode == 'r':
            contents = self.debug_files[filename]
            return StringIO(contents.decode())
        elif mode == 'rb':
            contents = self.debug_files[filename]
            return BytesIO(contents)
        elif mode == 'w':
            return InMemoryDebugTextFile(self.debug_files, filename)
        elif mode == 'wb':
            return InMemoryDebugBinaryFile(self.debug_files, filename)
    
    def copy_debug_file(self, source: str, destination: str, error_if_not_found: bool = True) -> None:
        '''
        Copy source to destination, opening both with self.open_debug_file.
        '''
        try:
            with self.open_debug_file(source, 'rb') as source_file:
                with self.open_debug_file(destination, 'wb') as destination_file:
                    destination_file.write(source_file.read())
        except FileNotFoundError:
            if error_if_not_found:
                raise

    def write_debug_files(self) -> None:
        '''
        Write all in-memory debug files to disk.
        '''
        for name, contents in self.debug_files.items():
            with open(name, 'wb') as f:
                f.write(contents)
        self.debug_files.clear()

    def delete_debug_files(self) -> None:
        '''
        Delete all debug files, both on memory and on disk.
        '''
        if CONF.debug or CONF.gem5_orchestration != 'ipc':
            rmtree_if_exists('{}/{}'.format(CONF.debug_dir, CONF.test_case))
            Path('{}/{}'.format(CONF.debug_dir, CONF.test_case)).mkdir(parents = True, exist_ok = True)
        self.debug_files.clear()

    def set_cmd(self):
        cmd = [self.gem5_build]
        cmd.extend(["",""]) #entering debug flags (1,2)
        cmd.append("--outdir={}".format(self.gem5_output_location))
        cmd.append(CONF.gem5_se)
        cmd.extend(["-c",""]) #test_Case path (6)
        
        #adding config flags
        # for fl in self.gem5_flags:
        #     cmd.append(fl)
        
        # CPU config
        cmd.append("--num-cpu=1")
        cmd.extend([f"--cpu-type={CONF.cpu_type}"])
        cmd.extend([f"--cpu-clock={CONF.cpu_clock}"])
        cmd.extend([f"--sys-clock={CONF.sys_clock}"])
        
        #set cache type
        if CONF.ruby:
            cmd.append("--ruby")
            cmd.extend([f"--L1_TBEs={CONF.tbe_count}"])
            cmd.extend([f"--L2_TBEs={CONF.tbe_count}"])
            cmd.extend([f"--DC_TBEs={CONF.tbe_count}"])
        else:
            cmd.append("--caches")
            cmd.append("--l2cache")
            
        # L1, L2 caches
        cmd.extend([f"--l1d_size={CONF.l1d_size}"])
        cmd.extend([f"--l1d_assoc={CONF.l1d_assoc}"])
        cmd.extend([f"--l1i_size={CONF.l1i_size}"])
        cmd.extend([f"--l1i_assoc={CONF.l1i_assoc}"])
        cmd.extend([f"--cacheline_size={CONF.parse_size_as_bytes(CONF.cacheline_size)}"])
        cmd.extend([f"--l2_size={CONF.l2_size}"])
        cmd.extend([f"--l2_assoc={CONF.l2_assoc}"])
        
        # TLB
        cmd.extend([f"--DTB_entries={CONF.dtb_entries}"])
            
        #set attack
        if CONF.gem5_orchestration != "ipc":
            cmd.append("--dump-caches")

        # cmd.append("--num-cpu=1")

        if CONF.STT:
            cmd.extend(["--needsTSO=1", "--STT=1", "--implicit_channel=1"])
            if CONF.STT_UnsafeBaseline:
                cmd.remove("--STT=1")
                cmd.remove("--implicit_channel=1")
                cmd.append("--STT=0")
                cmd.append("--implicit_channel=0") # Will fail asserts in cpu.cc otherwise
                cmd.extend(["--threat_model=UnsafeBaseline"])
            elif CONF.STT_FuturisticSpec:
                cmd.extend(["--threat_model=Futuristic"])
            else:  # Spectre mode
                cmd.extend(["--threat_model=Spectre"])

        if CONF.DOLMA:
            cmd.extend(["--mem-type=SimpleMemory"])
            if (CONF.DOLMA_mode == CONF.DOLMA_modes.Baseline):
                cmd.extend(["--mode=0"])
            elif (CONF.DOLMA_mode == CONF.DOLMA_modes.DOLMA_Default_MR 
                  or CONF.DOLMA_mode == CONF.DOLMA_modes.STT_Spectre_MR):
                cmd.extend(["--mode=1"])
                if (CONF.DOLMA_mode == CONF.DOLMA_modes.STT_Spectre_MR):
                    cmd.extend(["--stt=1"])  # STT True
            elif (CONF.DOLMA_mode == CONF.DOLMA_modes.DOLMA_Conservative_MR
                    or CONF.DOLMA_mode == CONF.DOLMA_modes.STT_Futuristic_MR):
                cmd.extend(["--mode=2"])
                if (CONF.DOLMA_mode == CONF.DOLMA_modes.STT_Futuristic_MR):
                    cmd.extend(["--stt=1"])
            elif (CONF.DOLMA_mode == CONF.DOLMA_modes.DOLMA_Default_M
                    or CONF.DOLMA_mode == CONF.DOLMA_modes.STT_Spectre_M):
                cmd.extend(["--mode=3"])
                if (CONF.DOLMA_mode == CONF.DOLMA_modes.STT_Spectre_M):
                    cmd.extend(["--stt=1"])
            elif (CONF.DOLMA_mode == CONF.DOLMA_modes.DOLMA_Conservative_M
                    or CONF.DOLMA_mode == CONF.DOLMA_modes.STT_Futuristic_M):
                cmd.extend(["--mode=4"])
                if (CONF.DOLMA_mode == CONF.DOLMA_modes.STT_Futuristic_M):
                    cmd.extend(["--stt=1"])
            else:
                raise RuntimeError("Unreachable: DOLMA mode not supported")
            
        if CONF.SpecLFB:
            cmd.extend(["--bp-type=BiModeBP"])
            if CONF.SpecLFB_UnsafeBaseline:
                cmd.extend(["--scheme=unsafebaseline"])
            else:
                cmd.extend(["--scheme=Speclfb"])
                 
        if CONF.CleanupSpec:
            cmd.extend(["--needsTSO=0", "--scheme_invisispec=UnsafeBaseline", "--scheme_cleanupcache=Cleanup_FOR_L1L2"])
            if CONF.CleanupSpec_UnsafeBaseline:
                cmd.remove("--scheme_cleanupcache=Cleanup_FOR_L1L2")
                cmd.append("--scheme_cleanupcache=UnsafeBaseline")

        if CONF.InvisiSpec:
            cmd.extend(["--needsTSO=0","--scheme=SpectreSafeInvisibleSpec"])
            if CONF.InvisiSpec_UnsafeBaseline:
                cmd.remove("--scheme=SpectreSafeInvisibleSpec")
                cmd.append("--scheme=UnsafeBaseline")
            elif CONF.InvisiSpec_FuturisticSpec: # Never both
                cmd.remove("--scheme=SpectreSafeInvisibleSpec")
                cmd.append("--scheme=FuturisticSafeInvisibleSpec")
            if CONF.InvisiSpec_apply_spec_eviction_patch:
                cmd.append("--apply-spec-eviction-patch")

        cmd.append(f"--rel-max-tick={self.MAX_TICKS}")
        cmd.append(f"--checkpoint-dir={CONF.gem5_checkpoint}")
        self.cmd = cmd
        
    def get_cmd(self,tc_path: str, restore: bool, priming: bool =False):
        cmd = self.cmd.copy()
        if self.orchestration == "ipc":
            cmd[4] = CONF.gem5_config_ipc()
            cmd[5] = ""
        cmd[6] = tc_path
        # YAML debug flags will be overriden by the command line flags
        debug_flags = CONF.debug_flags if CONF.debug else []
        # Dynamic extensions to gem5 cmd
        # Customize based on defense here
        # Standard Run
        # elif CONF.debug:
        #    if not (CONF.CleanupSpec or CONF.InvisiSpec or CONF.STT):
        #        cmd.append("--l1traces")
        if "dtlb" in self.gem5_attacker_mode["sources"] and "DumpTLBWithCaches" not in debug_flags:
            debug_flags.append("DumpTLBWithCaches")

        if debug_flags:
            cmd[1] = f"--debug-flags={','.join(debug_flags)}"
            cmd[2] = "--debug-file=log.out"
        if not priming and CONF.gem5_save_checkpoints:
            cmd.append("--checkpoint-at-end")
        if CONF.debug:
            cmd.append("--dump-stats")
        if restore:
            cmd.extend(["--restore-with-cpu=DerivO3CPU", "-r 1"])
        if CONF.gem5_orchestration == "ipc":
            # the SOCKET here will be replaced with the socket name by ipc_orchestration.py
            cmd.extend(["--socket", "SOCKET"])
            cmd.extend(["--sandbox-size", str(self.MAIN_REGION_SIZE)])
        if CONF.profile:
            cmd.extend(["--profile"])

        # remove blank arguments
        cmd = [arg for arg in cmd if arg]
        return cmd
        
    def copy_bugs(self,round,input,path):
        Path('{}/bugs'.format(CONF.debug_dir)).mkdir(parents = True, exist_ok=True)
        cpts = sorted(
                glob(
                    '{loc}/cpt*'.format(
                        loc=CONF.gem5_checkpoint)),
                key=os.path.getmtime, reverse=True)
        if(len(cpts) > 0):
            shutil.copyfile(f"{cpts[-1]}/m5.cpt", "{}/bugs/checkpoint_base_{}_{}".format(CONF.debug_dir, round, input))
        copy_file_if_exists(f"{path}.asm", "{}/bugs/test_case_{}_{}.asm".format(CONF.debug_dir, round, input))
        copy_file_if_exists("{}/log.out".format(self.gem5_output_location), "{}/bugs/log_{}_{}.out".format(CONF.debug_dir, round, input))


    def load_test_case(self, test_case: TestCase):
        self.code_segment = test_case.to_string()
        if self.orchestration == 'ipc':
            self.ipc.load_test_case(test_case) 

    def construct_program(self, code_segment: str = "",
                          init_registers: str = "", init_flags: str = "",
                          data_segment: str = "") -> str:
        
        # LOGGER.dbg_fuzzer(f"construct_program - len(init_registers): {len(init_registers)}, len(data_segment):{len(data_segment)}, len(init_flags): {len(init_flags)}")

        def clean_up(code_segment: str) -> str:
            code_segment = code_segment.replace(".intel_syntax noprefix", "")
            code_segment = code_segment.replace(".test_case_enter:", "")
            code_segment = code_segment.replace(".test_case_main:", "")
            code_segment = code_segment.replace(".test_case_main.entry:", "")
            code_segment = code_segment.replace(".test_case_main.exit:", "")
            code_segment = code_segment.replace(".test_case_exit:", "")
            code_segment = code_segment.replace(".test_case_main.exit",
                                                ".exit")
            return code_segment

        program = ".intel_syntax noprefix\n"
        program += ".globl _start\n"
        # program += ".globl main\n"
        program += ".section .text\n"
        program += "_start:\n"
        # program += "main:\n"
        program += init_registers
        program += init_flags
        program += clean_up(code_segment)
        program += ".exit:\n"  # exit routine
        program += "    LFENCE\n"
        program += "    MOV     RAX, 60\n"   # system call 60 is exit
        program += "    XOR     RDI, RDI\n"  # we want return code 0
        program += "    SYSCALL\n"           # invoke operating system to exit
        program += ".section .data\n"
        program += data_segment
        program += "\n"
        return program

    def generate_test_data(self, input_: Input) -> Tuple[str, str, str, str]:

        def pad(n):
            if n <= (2**51 - 1):
                return int(n + (2**53)), int((2**53-1)), 'ANDQ'
            return n, n, 'ORQ'

        iB = input_.tobytes()
        values = [f"0x{bytes.hex(iB[i:i+1])}" for i in range(len(iB))]
        
        data_segment = "    .BYTE {}\n".format(','.join(values))
        # LOGGER.dbg_fuzzer(f"generate_test_data - len(input_): {len(input_)}, len(iB): {len(iB)}, len(values): {len(values)}")

        # Values in registers and flags
        init_registers = ""
        init_flags = ""
        registers = ["RAX", "RBX", "RCX", "RDX", "RSI", "RDI", "EFLAGS"]
        for i, value in enumerate(input_.get_registers()):
            if registers[i] != "EFLAGS":
                # masking so that all values are 64 bits
                value, mask, op = pad(value)
                init_registers += f"  MOV {registers[i]}, {value}\n"
                init_registers += f"  MOV R8, {mask}\n"
                init_registers += f"  {op} {registers[i]}, R8\n"
            else:
                # initialize flags
                value = (value & np.uint64(2263)) | np.uint64(2)
                init_flags += f"  MOV RSP, {self.upper_overflow_base + self.OVERFLOW_REGION_SIZE}\n"
                init_flags += f"  MOV RBP, {self.upper_overflow_base + self.OVERFLOW_REGION_SIZE}\n"
                init_flags += "  MOV R10, {}\n".format(value)    # store eflags in r10
                init_flags += "  PUSH R10\n"   # push r10 onto stack
                init_flags += "  POPF\n"       # POP top of stack into eflags
                # initialize RSP, RBP for test case
                init_flags += f"  MOV RSP, {self.stack_base}\n"
                init_flags += f"  MOV RBP, {self.stack_base}\n"
        # initialize to 0 all the other registers
        others = ["R8", "R9", "R10", "R11", "R12", "R13", "R15"]
        for reg in others:
            init_registers += f"  MOV {reg}, 0\n"

        # initialize R14
        init_registers += f"  MOV R14, {self.main_region}\n"

        # Preamble; load this and zero it out to warm tlb!
        # All mem accesses are r14 + some offset s.t. r14 is main region base
        if (not CONF.STT):
            init_registers += f"  MOV R10, qword ptr [R14]\n" # Warm TLB for main region
            # init_registers += f"  MOV R10, qword ptr [R14 + 4096]" # Warm TLB for upper overflow
            init_registers += f"  MOV R10, 0\n"
        # With STT, we want the pages to MISS
        # Want at least 8 pages

        # The assembly length of this part is 0xe7 and it added to self.code_base to caclulate self.main_base
        return init_registers, data_segment, init_flags
    
    def get_raw_trace(self, id_, input_):
        atk = self.gem5_attacker_mode
        for kywd in ["sources"]:
            if kywd not in atk:
                print(f"Malformed attacker mode! \"{kywd}\" needed.")
                exit(1)
        sources = atk["sources"]
        include_replacements = getattr(atk, "include_replacements", False)
        trace = []
        tags_file = "{}/{}/cache_tags_{}_{}.toml".format(CONF.debug_dir, CONF.test_case, id_, input_)
        self.format_checkpoint_file("{}/{}/cache_tags_{}_{}".format(CONF.debug_dir, CONF.test_case, id_, input_), tags_file)
        # print(self.open_debug_file(tags_file).read())
        tags = toml.load(self.open_debug_file(tags_file))
        for src in sources:
            state = None
            sort_tags = True
            if src == "data_cache":
                rp = []
                if 'system' in tags.keys() and 'cpu' in tags['system'].keys() and  'dcache' in tags['system']['cpu'].keys():
                    t_state = [int(addr) for addr in tags['system']['cpu']['dcache']['addresses'].split()]
                elif 'system' in tags.keys() and 'ruby' in tags['system'].keys() and 'l1_cntrl0' in tags['system']['ruby'].keys() and 'L1Dcache' in tags['system']['ruby']['l1_cntrl0'].keys():
                    t_state = [int(addr) for addr in tags['system']['ruby']['l1_cntrl0']['L1Dcache']['addresses'].split()]
                    if include_replacements:
                        rp = [int(r) for r in tags['system']['ruby']['l1_cntrl0']['L1Dcache']['replacements'].split()]
                else:
                    print("Missing entry '[system.cpu.dcache]' in tags")
                    exit(1)
                state = []
                for tag in t_state:
                    state.append(tag)
                for rp_bits in rp:
                    state.append(rp_bits)
            elif src == "instr_cache":
                if 'system' in tags.keys() and 'cpu' in tags['system'].keys() and  'icache' in tags['system']['cpu'].keys():
                    state = [int(addr) for addr in tags['system']['cpu']['icache']['addresses'].split()]
                elif 'system' in tags.keys() and 'ruby' in tags['system'].keys() and 'l1_cntrl0' in tags['system']['ruby'].keys() and 'L1Icache' in tags['system']['ruby']['l1_cntrl0'].keys():
                    state = [int(addr) for addr in tags['system']['ruby']['l1_cntrl0']['L1Icache']['addresses'].split()]
                    if include_replacements:
                        state.extend(int(r) for r in tags['system']['ruby']['l1_cntrl0']['L1Icache']['replacements'].split())
                else:
                    print("Missing entry '[system.cpu.icache]' in tags")
                    exit(1)
            elif src == "dtlb":
                state = []
                tlb = tags['system']['cpu']['dtb']
                for entry in tlb:
                    if not entry.startswith('Entry'): continue
                    state.append(int(tlb[entry]['paddr']))
                if not CONF.SpecLFB:
                    assert len(state) > 0, 'TLB is empty? Seems unlikely'
            elif src == "branch_pred_state":
                branch_pred = tags['system']['cpu']['branchPred']
                values = ';'.join(branch_pred[key] for key in sorted(branch_pred.keys()))
                state = [branch_pred]
            elif src == "branch_predictions" or src == "branch_predictions_timing":
                branch_pred = tags['branchPredictionLog']['log']
                state = [branch_pred]
            elif src == "access_timing" or src == "access_order":
                log = tags['accessLog']['log']
                state = [log]
            else:
                print(f'Unsupported source {src}')
                exit(1)
            if "cache" in src or "tlb" in src:
                SANDBOX_BASE_PADDR = 0x3000
                if CONF.gem5_orchestration == "ipc" and src == "data_cache":
                    def process(tag: int) -> int:
                        # Choice of replacement isn't necessarily consistent between inputs.
                        # For each tag, we classify it either as "inside sandbox" or "outside sandbox"
                        # and leave the bottom bits (the ones which determine the cache set) untouched
                        tag -= SANDBOX_BASE_PADDR
                        if 0 <= tag < CONF.input_main_region_size:
                            return tag
                        else:
                            set_identifier = tag & (CONF.parse_size_as_bytes(CONF.l1d_size) // CONF.l1d_assoc - 1)
                            return set_identifier | \
                                CONF.input_main_region_size # marker indicating this comes from outside sandbox
                    state = [process(tag) for tag in state]
                if CONF.gem5_orchestration == "ipc" and src == "dtlb":
                    # Here we are only interested in tags which lie in the sandbox
                    state = [tag for tag in state if SANDBOX_BASE_PADDR <= tag < SANDBOX_BASE_PADDR + CONF.input_main_region_size]
                if sort_tags:
                    state.sort()
            trace.extend(state)
        return trace 
                
    def get_trace(self, index: int, id_, input_, is_priming: bool) -> CombinedHTrace:
        trace = self.get_raw_trace(id_, input_)
        hasher = xxhash.xxh64()
        hasher.update(str(trace).encode("utf-8")) # Can only update with bytes
        htrace = hasher.intdigest() % ((2 << 64) - 1)
        return htrace

    def parse_basicCache_logs(self, keyword, logs):
        def parseBlock(block):
            import re
            cset = re.findall(r'set: ([0-9A-Za-z]+) ', block)[0]
            way = re.findall(r'way: ([0-9A-Za-z]+)', block)[0]
            tag = re.findall(r'tag: ([0-9A-Za-z]+) ', block)[0]
            writable = re.findall(r'writable: ([0-9]) ', block)[0]
            readable = re.findall(r'readable: ([0-9]) ', block)[0]
            dirty = re.findall(r'dirty: ([0-9]) ', block)[0]
            prefetched = re.findall(r'prefetched: ([0-9]) ', block)[0]
            secure = re.findall(r'secure: ([0-9]) ', block)[0]
            valid = re.findall(r'valid: ([0-9]) ', block)[0]
            status = writable + readable + dirty + prefetched + secure + valid
            return cset, way, tag, status

        ## filter logs by keyword and reconstruct cache state
        with self.open_debug_file(logs) as file:
            lines = file.readlines()
            cache_logs = [line.strip() for line in lines if (keyword+":") in line]

            # print(cache_logs)

            ## Construct cache state
            states = []
            currentTick = -1
            newCacheState = dict()
            for eventString in cache_logs:
                if "state:" in eventString:
                    ## 
                
                    tmp = eventString.split(": ")
                    
                    tick = tmp[0]
                    system = tmp[1]
                    msg = ": ".join(tmp[2:len(tmp)])

                    if tick != currentTick:

                        # print(newCacheState)
                        # print(tick)
                        currentTick = tick
                        states.append(newCacheState)
                        currentCacheState = states[-1]
                        newCacheState = currentCacheState.copy()

                    # print(eventString)

                    if msg.startswith("Replacement victim:"):
                        ## ignore replacement messages
                        newBlock = None
                    elif msg.startswith("Block addr"):
                        tmp = msg.split("to state: ")
                        newBlock = tmp[1]
                        cmd = "access"
                    elif msg.startswith("access for CleanInvalidReq"):
                        tmp = msg.split("PoC hit state: ")
                        newBlock = tmp[1]
                        cmd = "invalidate"
                    else:
                        print(f"currently unsupported log message {msg}")
                        exit(1)

                    if newBlock is not None:
                        # currentCacheState = states[-1]
                        # newCacheState = currentCacheState.copy()

                        cset, way, tag, status = parseBlock(newBlock)
                        if cmd == "invalidate":
                            tag = "0xffffffffffffffff"
                            status = "000000"

                        if cset in newCacheState.keys():
                            # if way in newCacheState[cset]:
                            newCacheState[cset][way] = (tag,status)
                        else:
                            ## add fresh
                            newCacheState[cset] = dict()
                            newCacheState[cset][way] = (tag,status)

            ## append last state
            states.append(newCacheState)
                        
            return states

    def cleanup(self):
            ''' cleanup after running gem5 '''
            if self.orchestration != "ipc":
                rmtree_if_exists(self.gem5_output_location)
            if CONF.gem5_orchestration != "ipc" or CONF.debug or CONF.gem5_save_checkpoints:
                rmtree_if_exists(CONF.gem5_checkpoint)
                os.mkdir(CONF.gem5_checkpoint)

    def process_gem5_output(self, gem5_output: str):
        if CONF.profile:
            simulation_marker = 'SIMULATION TIME: '
            start = gem5_output.index(simulation_marker) + len(simulation_marker)
            end = gem5_output.index('\n', start)
            STAT.simulation_time += float(gem5_output[start:end])

    def ipc_trace_test_case(self, input_, id_):
        try:
            if not CONF.gem5_ipc_persist_log:
                self.ipc.reset_log() # seek to start of log in gem5
                open(f'{self.gem5_output_location}/log.out', 'w').close() # truncate log
            tags = self.ipc.trace_test_case(input_, id_, self.gem5_attacker_mode["sources"])
            with self.open_debug_file("{}/{}/cache_tags_{}_{}".format(CONF.debug_dir, CONF.test_case, id_, input_), "w") as f:
                f.write(tags)
        except Gem5Crash:
            LOGGER.waring('executor', 'Gem5 crashed!!')
            # restart gem5 in case of crash
            self.ipc.restart_gem5(self.get_cmd("", self.priming))
            raise

    # priming flag is in use of priming to stop on the wanted input and get its check point
    def trace_test_case(self, inputs: List[Input], id_,
                        num_measurements: int = 0) -> List[CombinedHTrace]:
        if CONF.gem5_orchestration == "ipc":
            self.ipc.restart_gem5(self.get_cmd("", self.priming))
        if self.code_segment == "":
            print("Error: no test case")
            exit(1)

        traces = []
        self.ticks = []

        # Unicorn model should have already created CTraces for this input round
        curr_debug_dir = "{}/{}".format(CONF.debug_dir, CONF.test_case)
        assert os.path.isdir(curr_debug_dir), f"executor::trace_test_case: Debug dir {curr_debug_dir} does not exist!"

        outer_counter = 0
        if CONF.gem5_save_checkpoints:
            run(['rm', '-rf', '{loc}/cpt*'.format(loc=CONF.gem5_checkpoint)])
        # copy checkpoint from previous round for restore
        if id_ > 0:
            #restore from checkpoint
            if CONF.gem5_enable_cross_test_case_checkpoints and int(self.last_tick) > 0:
                Path('{loc}/cpt.{tick}'.format(loc=CONF.gem5_checkpoint,tick=self.last_tick)).mkdir(parents = True, exist_ok=True)
                shutil.copyfile("{}/{}/checkpoint_{}_{}".format(CONF.debug_dir, CONF.test_case, id_ - 1, self.last_input), '{loc}/cpt.{tick}/m5.cpt'.format(loc=CONF.gem5_checkpoint,tick=self.last_tick))

            if CONF.gem5_enable_cross_test_case_checkpoints and int(self.last_tick) > 0:
                shutil.copyfile('{loc}/cpt.{tick}/m5.cpt'.format(loc=CONF.gem5_checkpoint,tick=self.last_tick), "{}/{}/checkpoint_{}_{}".format(CONF.debug_dir, CONF.test_case, id_ - 1, self.last_input))
            #save the base checkpoint for the priming process
            self.base_input = self.last_input
            
        # tags=glob('{loc}/tags*'.format( loc=CONF.gem5_checkpoint))
        # for tag in tags:
        #        run(["rm", "-rf", tag])

        tick = 0
        if CONF.gem5_orchestration == 'ipc':
            # program is the same between inputs, so just save one copy of it
            test_case_path = f"{CONF.debug_dir}/{CONF.test_case}/test_case"
            with self.open_debug_file(test_case_path+".asm", "w") as f:
                f.write(self.code_segment)
        for input_ in inputs:
        # for input_chunk in chunks(inputs, self.batch_size):
            # prepare all binaries
            # for input_ in input_chunk:

            restore = False
            if CONF.gem5_restore == 1 and (outer_counter != 0 or (id_ > 0 and CONF.gem5_enable_cross_test_case_checkpoints and int(self.last_tick) > 0)):
                # make sure there's only one checkpoint to restore from
                cpts = glob('{loc}/cpt*'.format(loc=CONF.gem5_checkpoint))
                if len(cpts) != 1:
                    print(cpts)
                    print("Ambiguous or empty checkpoint directory")
                else:
                    restore = True

            bug = False
            if self.orchestration == 'ipc':
                if CONF.profile: start = time.time()
                try:
                    self.ipc_trace_test_case(input_, id_)
                    gem5_output = self.ipc.get_gem5_output()
                except Gem5Crash:
                    bug = True
                if CONF.profile: STAT.gem5_time += time.time() - start
            else:
                revizor_asm_path = "{}/{}/test_case_rvzr_{}_{}.asm".format(CONF.debug_dir, CONF.test_case, id_, input_)
                test_case_path = f"{CONF.debug_dir}/{CONF.test_case}/{self.test_case_path}_{id_}_{input_}"
                with self.open_debug_file(revizor_asm_path, "w") as file:
                    file.write(self.code_segment) # Input-less program, for easy plugging back in to revizor
                # 1. generate test data from input seed
                (init_registers, data_segment, init_flags) = \
                    self.generate_test_data(input_)

                # 2. construct the assembly program
                program = self.construct_program(self.code_segment,
                                                    init_registers,
                                                    init_flags, data_segment)
                
                # 3. create the binary
                with open(test_case_path+".asm", "w") as f:
                    f.write(program)
                
                assemble_and_link(test_case_path+".asm", test_case_path+".o", test_case_path+".out")
                    
                process = test_case_path+".out"
                # with self.open_debug_file(f"{test_case_path}.dump", 'w') as dumpfile:
                #    run(["objdump","-d", f"{process}"], stdout=dumpfile)
                # 4. run gem5
                cmd = self.get_cmd(process, restore, False)
                # print("Invoking gem5 as: {}".format(' '.join(cmd))) # Debug
                if CONF.profile: start = time.time()
                ret = run(cmd, capture_output=True)
                if CONF.profile: STAT.gem5_time += time.time() - start
                if ret.returncode != 0:
                    print("gem5 failed")
                    print(ret)
                    exit(1)
                gem5_output = ret.stdout.decode()
            if CONF.profile: parse_start = time.time()
            if not bug: self.process_gem5_output(gem5_output)
            bug = bug or gem5_output.split('because')[-1].split('\n')[0] == ' simulate() limit reached'
            if bug:
                # Pass flag here: DONT TRUST THIS HWTRACE!
                # If donttrust flag and vio, then not a real vio
                self.copy_bugs(id_,input_,test_case_path)
                LOGGER.report_bug()
                traces.append(CombinedHTrace(0))
                self.cleanup()
                continue
            # 5. collect traces
            if CONF.gem5_save_checkpoints:
                cpts = sorted(
                    glob(
                        '{loc}/cpt*'.format(
                            loc=CONF.gem5_checkpoint)),
                    key=os.path.getmtime, reverse=True)
                # cpt_value = None
                if len(cpts) != 0:
                    #for checkpoint based priming we save the checkpoint as is
                    assert len(cpts) == 1
                    tick = cpts[0].split('.')[-1]
                    self.ticks.append(tick)
                    shutil.copy_debug_file(f"{cpts[0]}/m5.cpt", "{}/{}/checkpoint_{}_{}".format(CONF.debug_dir, CONF.test_case, id_, input_))
            if CONF.gem5_orchestration != "ipc":
                tags = glob('{loc}/tags*'.format( loc=CONF.gem5_checkpoint))
                assert len(tags) == 1
                self.copy_debug_file(f"{tags[0]}/m5.tag", "{}/{}/cache_tags_{}_{}".format(CONF.debug_dir, CONF.test_case, id_, input_))
                # print(tags) # Debug
                # ### Debug ###
                # print(f"{tags[0]}/m5.tag")
                # with open(f"{tags[0]}/m5.tag", 'r') as f:
                #    lines=f.readlines()
                #    #print(lines[0])
                #    #print(lines[6])
                #    print(lines[7].rstrip('\n'))
                # ### Debug ###
                rmtree_if_exists(tags[0])

            with self.open_debug_file("{}/{}/gem5out_{}_{}.out".format(CONF.debug_dir, CONF.test_case, id_, input_), "w") as gem5out:
                gem5out.write(gem5_output)
            gem5_files = ["log.out", "config.ini"]
            if CONF.save_stats:
                gem5_files.append("stats.txt")

            for file in gem5_files:
                if file == "log.out":
                    self.copy_debug_file("{}/log.out".format(self.gem5_output_location), "{}/{}/log_{}_{}.out".format(CONF.debug_dir, CONF.test_case, id_, input_), error_if_not_found = False)

                elif file == "stats.txt":
                    self.copy_debug_file("{}/stats.txt".format(self.gem5_output_location), "{}/{}/stats_{}_{}.txt".format(CONF.debug_dir, CONF.test_case, id_, input_), error_if_not_found = False)

                elif file == "config.ini":
                    self.copy_debug_file("{}/config.ini".format(self.gem5_output_location), "{}/{}/config_{}_{}.ini".format(CONF.debug_dir, CONF.test_case, id_, input_), error_if_not_found = False)



            # 6. cleanup
            if CONF.gem5_save_checkpoints:
                for di in cpts[1:]:
                    rmtree_if_exists(di)
            self.cleanup()

            trace = self.get_trace(0, id_, input_, False)
            traces.append(trace)            
            # print(f'got htrace {trace:016x}\n') # Debug
            outer_counter += 1
            if CONF.profile: STAT.parse_time += time.time() - parse_start
        
        # saves input for next test restoration
        self.last_tick = int(tick)
        self.last_input = inputs[-1]
        return traces
    

    def trace_priming(self, test_input: Input, round,
                      head_input = True) -> CombinedHTrace:
        if self.code_segment == "":
            print("Error: no test case")
            exit(1)

        test_case_path = f"{CONF.debug_dir}/{CONF.test_case}/{self.test_case_path}_{round}_{test_input}"
        
        bug = False
        if self.orchestration == 'ipc':
            if CONF.profile: start = time.time()
            try:
                self.ipc_trace_test_case(test_input, round+1)
                gem5_output = self.ipc.get_gem5_output()
            except Gem5Crash:
                bug = True
            if CONF.profile: STAT.gem5_time += time.time() - start
        else:
            # 1. generate test data from input seed
            (init_registers, data_segment, init_flags) = \
                self.generate_test_data(test_input)

            # 2. construct the assembly program
            program = self.construct_program(self.code_segment,
                                                init_registers,
                                                init_flags, data_segment)

            revizor_asm_path = "{}/{}/test_case_rvzr_{}_{}.asm".format(CONF.debug_dir, CONF.test_case, round+1, test_input)
            with self.open_debug_file(revizor_asm_path, "w") as file:
                file.write(self.code_segment) # Input-less program, for easy plugging back in to revizor

            # 3. create the binary
            with open(test_case_path+".asm", "w") as f:
                f.write(program)
            
            assemble_and_link(test_case_path+".asm", test_case_path+".o", test_case_path+".out")
            
            process = test_case_path+".out"
            #with self.open_debug_file(f"{test_case_path}.dump", 'w') as dumpfile:
            #    run(["objdump","-d", f"{process}"], stdout=dumpfile)

            restore = False
            if not head_input or (round!=0 and CONF.gem5_enable_cross_test_case_checkpoints):    
                restore = True
                
            cmd = self.get_cmd(process, restore, True)

            # 4. run gem5
            if CONF.profile: start = time.time()
            ret = run(cmd, capture_output=True)
            if CONF.profile: STAT.gem5_time += time.time() - start
            if ret.returncode != 0:
                print("gem5 failed")
                print(ret)
            gem5_output = ret.stdout.decode()
        if not bug: self.process_gem5_output(gem5_output)
        bug = bug or gem5_output.split('because')[-1].split('\n')[0] == ' simulate() limit reached'
        if bug:
            # Pass flag here: DONT TRUST THIS HWTRACE!
            # If donttrust flag and vio, then not a real vio
            self.copy_bugs(id_,input_,test_case_path)
            LOGGER.report_bug()
            self.cleanup()
            return CombinedHTrace(0)
            
        if CONF.profile: parse_start = time.time()
        with self.open_debug_file("{}/{}/gem5out_{}_{}.out".format(CONF.debug_dir, CONF.test_case, round+1, test_input), "w") as gem5out:
            gem5out.write(gem5_output)
        
        gem5_files = ["log.out", "config.ini"]
        if CONF.save_stats:
            gem5_files.append("stats.txt")

        for file in gem5_files:
            if file == "log.out":
                self.copy_debug_file("{}/log.out".format(self.gem5_output_location), "{}/{}/log_{}_{}.out".format(CONF.debug_dir, CONF.test_case, round+1, test_input), error_if_not_found = False)

            elif file == "stats.txt":
                self.copy_debug_file("{}/stats.txt".format(self.gem5_output_location), "{}/{}/stats_{}_{}.txt".format(CONF.debug_dir, CONF.test_case, round+1, test_input), error_if_not_found = False)

            elif file == "config.ini":
                self.copy_debug_file("{}/config.ini".format(self.gem5_output_location), "{}/{}/config_{}_{}.ini".format(CONF.debug_dir, CONF.test_case, round+1, test_input), error_if_not_found = False)
        if CONF.gem5_orchestration != 'ipc':
            tags = glob('{loc}/tags*'.format( loc=CONF.gem5_checkpoint))
            assert len(tags) == 1
            with open(f"{tags[0]}/m5.tag", 'r') as f:
                    lines=f.readlines()
                    print(lines[0])
                    #print(lines[6])
                    print(lines[7])

            self.copy_debug_file(f"{tags[0]}/m5.tag", "{}/{}/cache_tags_{}_{}".format(CONF.debug_dir, CONF.test_case, round+1, test_input))
            rmtree_if_exists(tags[0])

        # 8. Collect traces
        trace = self.get_trace(0, round+1, test_input, True)
        
        # 9. cleanup
        self.cleanup()
        if CONF.profile: STAT.parse_time += time.time() - parse_start
            
        return trace
            

    def set_checkpoint(self, id_: int, base_input: Input, head_input: bool, input_id: int):
         #5. Removes leftover checkpioints from gem5 folder
        cpts = glob('{loc}/cpt*'.format(loc=CONF.gem5_checkpoint))
        for di in cpts:
            system('rm -rf ' + di)
        
        #Copies the right checkpoint to start from - set the context
        if not (head_input and id_==0):
            from pathlib import Path
            if (head_input):
                Path('{loc}/cpt.{tick}'.format(loc=CONF.gem5_checkpoint, tick=self.last_tick)).mkdir(parents = True, exist_ok=True)
                shutil.copyfile("{}/{}/checkpoint_{}_{}".format(CONF.debug_dir, CONF.test_case, id_-1, self.base_input), '{loc}/cpt.{tick}/m5.cpt'.format(loc=CONF.gem5_checkpoint,tick=self.last_tick))
            else:
                Path('{loc}/cpt.{tick}'.format(loc=CONF.gem5_checkpoint, tick=self.ticks[input_id])).mkdir(parents = True, exist_ok=True)
                shutil.copyfile("{}/{}/checkpoint_{}_{}".format(CONF.debug_dir, CONF.test_case, id_, base_input), '{loc}/cpt.{tick}/m5.cpt'.format(loc=CONF.gem5_checkpoint,tick=self.ticks[input_id]))

    def read_packets(self, path: str):
        # TODO: Protolib comes in gem5 distribution. Right now, we need to copy-paste the correct version into revizor. Can we do something better?
        # Generate packet_pb2.py in gem5 with "protoc -I=gem5/src/proto --python_out=gem5/src/proto gem5/src/packet.proto and copy into revizor/src
        import protolib
        import packet_pb2 # Make sure the proto definitions are up to date.
        import subprocess
        src_dir = os.path.dirname(os.path.realpath(__file__))
        subprocess.check_call(['make', '--quiet', '-C', src_dir, 'packet_pb2.py'])

        proto_in = protolib.openFileRd(path)

        # Read the magic number in 4-byte Little Endian
        magic_number = proto_in.read(4).decode()

        if magic_number != "gem5":
            print("Unrecognized file",path)
            exit(-1)

        ## Parsing packet header
        # Add the packet header
        header = packet_pb2.PacketHeader()
        protolib.decodeMessage(proto_in, header)

        ## Parsing packets
        packet = packet_pb2.Packet()
        packets = []
        # Decode the packet messages until we hit the end of the file
        while protolib.decodeMessage(proto_in, packet): 
            relative_addr = (packet.addr - self.OVERFLOW_REGION_SIZE) // self.CACHELINE_SIZE * self.CACHELINE_SIZE
            relative_cmd = 'r' if packet.cmd == 1 else ('w' if packet.cmd == 4 else 'u')
            curr_entry = TraceEntry(
                tick = packet.tick,
                raw_cmd = packet.cmd,
                cmd = relative_cmd,
                raw_addr = packet.addr,
                addr = relative_addr,
                size = packet.size,
                
                pc = packet.pc,
                sq = packet.sq,
            )
            if (CONF.InvisiSpec or CONF.CleanupSpec or CONF.STT):
                curr_entry.is_spec=packet.is_spec
                curr_entry.is_validate=packet.is_validate
                curr_entry.is_expose=packet.is_expose
                curr_entry.is_spec_flush=packet.is_spec_flush
            if (CONF.CleanupSpec):
                curr_entry.is_cleanup=packet.is_cleanup
            packets.append(curr_entry) 
            
        # We're done
        proto_in.close()
        return packets, header
    
    def write_packets(self, packets, header, unzipped_path: str) -> bool:
        path = unzipped_path
        zipped_path = path + ".gz"
        if os.path.exists(zipped_path):
            print(f"Overwriting old file at {zipped_path}")
            os.remove(zipped_path)
        
        # TODO: Protolib comes in gem5 distribution. Right now, we need to copy-paste the correct version into revizor. Can we do something better?
        # Generate packet_pb2.py in gem5 with "protoc -I=gem5/src/proto --python_out=gem5/src/proto gem5/src/packet.proto and copy into revizor/src
        import protolib
        import packet_pb2 # Make sure the proto definitions are up to date.
        import subprocess
        src_dir = os.path.dirname(os.path.realpath(__file__))
        subprocess.check_call(['make', '--quiet', '-C', src_dir, 'packet_pb2.py'])
        
        proto_out = open(path, "wb")
        # Write in order: Magic number (gem5), packet header, packet(s)
        magic_number = "gem5".encode('utf-8')
        proto_out.write(magic_number)
        protolib.encodeMessage(proto_out, header)

        for entry in packets:
            assert(type(entry) == TraceEntry)
            proto_packet = packet_pb2.Packet()
            proto_packet.addr = entry.raw_addr
            proto_packet.pc = entry.pc
            proto_packet.cmd = entry.raw_cmd
            proto_packet.size = entry.size

            proto_packet.sq = entry.sq
            proto_packet.tick = entry.tick

            if (CONF.InvisiSpec or CONF.CleanupSpec or CONF.STT):
                proto_packet.is_spec = entry.is_spec
                proto_packet.is_validate = entry.is_validate
                proto_packet.is_expose = entry.is_expose
                proto_packet.is_spec_flush = entry.is_spec_flush
            if (CONF.CleanupSpec):
                proto_packet.is_cleanup = entry.is_cleanup
            protolib.encodeMessage(proto_out, proto_packet)

        proto_out.close()

        result = run(["gzip", path]) # Overwrite
        if (result.returncode != 0):
            LOGGER.error(f"write_packets: Unable to gzip file {path}")
        # print(f'File {path} zipped to {zipped_path}') # Debug
        return True

    # Find & extract differing cache line addresses from trace packet
    def find_instructions(self, input_tested : Input ,input_org: Input, id_: int, trace_type: str, test_case: TestCase):
        
        #get packets for the original input and the tested one
        tested_path = "{debug}/{test_case}/{trace}_{idx}_{input}.gz".format(debug=CONF.debug_dir, test_case=CONF.test_case, trace=trace_type, idx=id_+1, input=input_tested)
        packets_tested, _header = self.read_packets(tested_path)

        org_path = "{debug}/{test_case}/{trace}_{idx}_{input}.gz".format(debug=CONF.debug_dir, test_case=CONF.test_case, trace=trace_type, idx=id_+1, input=input_org)
        packets_org, _header = self.read_packets(org_path)
        
        #remove duplicates of cache accesses:
        set_tested = set([(packet[0]) for packet in packets_tested])
        set_org  = set([(packet[0]) for packet in packets_org])
        
        #tested unique addresses
        diff_set = set_tested - set_org
        diff_packets = [(packet) for packet in packets_tested if packet[0] in diff_set]
        tested_instructions = []   
        for pkt in diff_packets:
            pc = pkt.pc
            addr = pkt.addr
            tick = pkt.tick
            if (pc-self.main_base) in test_case.address_map.keys(): # if program counter mapped to some instruction
                tested_instructions.append((hex(pc),test_case.address_map[pc-self.main_base].__str__(), addr, tick))
            else:
                tested_instructions.append((hex(pc),"UNMAPPED", addr, tick))
            
        #original unique addresses
        diff_set = set_org - set_tested
        diff_packets = [(packet) for packet in packets_org if packet[0] in diff_set]
        org_instructions = [] 
        for addr, pc, sq, tick, cmd, size in diff_packets:
            if (pc-self.main_base) in test_case.address_map.keys(): 
                org_instructions.append((hex(pc),test_case.address_map[pc-self.main_base].__str__(), addr, tick))
            else:
                tested_instructions.append((hex(pc),"UNMAPPED", addr, tick))

        return tested_instructions,org_instructions

    def print_test_case(self, test_case: TestCase):
        from collections import OrderedDict
        od = OrderedDict(sorted(test_case.address_map.items()))
        file=open('{}/{}/test_case_asm'.format(CONF.debug_dir, CONF.test_case), 'a+')
        for pc, inst in od.items():
            print(f"{hex(pc+self.main_base)}                   {inst}", file=file)
    

    def format_checkpoint_file(self, source_file_name, destination_file_name):
        # Gem5's checkpoint file looks like TOML but it actually isn't, so we format it to a TOML file
        f = self.open_debug_file(source_file_name)
        lines = []
        for line in f:
            if '=' in line:
                spl = line.split('=')
                fmt_line = spl[0] + '=' + '"' + spl[1].replace('\n', '') + '"'
                lines.append(fmt_line)
            elif "[" in line:
                ## header
                id_ = line.strip()[1:-1]
                id_ = id_.replace("[", "--").replace("]","--")
                fmt_line = "[" + id_ + "]"
                lines.append(fmt_line)
            else:
                lines.append(line)
        self.open_debug_file(destination_file_name, 'w').write('\n'.join(lines))

    def format_checkpoint_trace_file(self, source_file_name, destination_file_name):
        # Gem5's checkpoint file looks like TOML but it actually isn't, so we format it to a TOML file
        f = self.open_debug_file(source_file_name)
        lines = []
        currentState = None
        for line in f:
            if '=' in line:
                spl = line.split('=')
                fmt_line = spl[0] + '=' + '"' + spl[1].replace('\n', '') + '"'
                lines.append(fmt_line)
            elif "[" in line:
                ## header
                id_ = line.strip()[1:-1]
                if "State_" in id_:
                    currentState = id_.replace("State_", "")
                    fmt_line = "[" + id_ + "]"
                else:
                    id_ = id_.replace("[", "--").replace("]","--")
                    fmt_line = "[" + "State_" + currentState + "." + id_ + "]"
                lines.append(fmt_line)
            else:
                lines.append(line)
        self.open_debug_file(destination_file_name, 'w').write('\n'.join(lines))

    def get_checkpoint_field(self, file_name, prop):
        print(file_name)
        print(prop)
        section = prop.split('.')[0]
        field = prop.split('.')[1]
        t = toml.load(self.open_debug_file(file_name))
        res = t.get(section)
        if res:
            return res[field]
        return ""

    def read_base_addresses(self):
        return self.sandbox_base, self.code_base

    def start_priming(self):
        self.priming = True
    def stop_priming(self):
        self.priming = False

def get_executor() -> Executor:
    options = {
        'x86-gem5': X86Gem5
    }
    if CONF.executor not in options:
        ConfigException("unknown executor in config.py")
    return options[CONF.executor]()

