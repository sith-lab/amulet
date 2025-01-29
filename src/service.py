"""
File: Global classes that provide service to all Revizor modules

Copyright (C) Microsoft Corporation
SPDX-License-Identifier: MIT
"""

from datetime import datetime

from interfaces import EquivalenceClass
from interfaces import CTrace, HTrace, Input
from config import CONF
from typing import NoReturn, Optional
import sys
import shutil

MASK_64BIT = pow(2, 64)

class StatisticsCls:
    test_cases = 0
    num_inputs = 0
    eff_classes = 0
    single_entry_classes = 0
    required_priming = 0
    priming_errors = 0
    violations = 0
    coverage = 0
    coverage_longest_uncovered = 0
    fully_covered: int = 0
    simulation_time: float = 0
    gem5_time: float = 0
    total_time: float = 0
    ctrace_time: float = 0
    generate_time: float = 0
    parse_time: float = 0
    prime_time: float = 0

    def __str__(self):
        total_clss = self.eff_classes + self.single_entry_classes
        effectiveness = self.eff_classes / total_clss if total_clss else 0
        total_clss_per_test_case = total_clss / self.test_cases if self.test_cases else 0
        effective_clss = self.eff_classes / self.test_cases if self.test_cases else 0

        s = "\n================================ Statistics ===================================\n"
        s += f"Test Cases: {self.test_cases}\n"
        s += f"Inputs per test case: {self.num_inputs / self.test_cases:.1f}\n"
        s += "Coverage:\n"
        s += f"  Patterns: {self.coverage}\n"
        s += f"  Fully covered: {self.fully_covered}\n"
        s += f"  Longest uncovered: {self.coverage_longest_uncovered}\n"
        s += f"  Effectiveness: {effectiveness:.1f}\n"
        s += "Effectiveness: \n"
        s += f"  Total Cls: {total_clss_per_test_case:.1f}\n"
        s += f"  Effective Cls: {effective_clss:.1f}\n"
        s += f"Required priming: {self.required_priming}\n"
        s += f"Priming errors: {self.priming_errors}\n"
        s += f"Violations: {self.violations}\n"

    def profile_time(self, t: float) -> str:
        return f"{t:.1f}s ({t / self.total_time * 100:.1f}%)"

    def profile(self) -> Optional[str]:
        if CONF.profile:
            s = ""
            s += f"Total time spent:              {self.total_time:.1f}s\n"
            s += f"  inside gem5:                 {self.profile_time(self.gem5_time)}\n"
            s += f"    m5.simulate:               {self.profile_time(self.simulation_time)}\n"
            s += f"  obtaining ctraces:           {self.profile_time(self.ctrace_time)}\n"
            s += f"  generating programs, inputs: {self.profile_time(self.generate_time)}\n"
            s += f"  parsing gem5 results:        {self.profile_time(self.parse_time)}\n"
            s += f"  other:                       {self.profile_time(self.total_time - self.gem5_time - self.ctrace_time - self.parse_time - self.generate_time)}\n"
            s += f"------\n"
            s += f"  priming:                     {self.profile_time(self.prime_time)}\n"
            return s
        else:
            return None

    def get_brief(self):
        if self.test_cases == 0:
            return ""
        else:
            s = f"EfCl:{self.eff_classes / self.test_cases:.1f}, "
            s += f"AlCl:{(self.eff_classes + self.single_entry_classes) / self.test_cases:.1f}, "
            s += f"In:{self.num_inputs / self.test_cases:.1f}, "
            s += f"Cov:{self.coverage}, "
            s += f"Prim:{self.required_priming}, " \
                 f"PErr:{self.priming_errors}, " \
                 f"Viol:{self.violations}, "
            return s


STAT = StatisticsCls()


class Logger:
    """
    A global object responsible for printing stuff.

    Has the following levels of logging:
    - Error: Critical error. Prints a message and exits
    - Warning: Non-critical error. Always printed, but does not exit
    - Info: Useful info. Printed only if enabled in CONF.logging_modes
    - Debug: Detailed info. Printed if both enabled in CONF.logging_modes and if __debug__ is set.
             Enabled separately for each module.
    - Trace: Same as debug, but for the cases when the amount of printed info is huge
    """

    one_percent_progress: float = 0.0
    progress: float = 0.0
    progress_percent: int = 0
    msg: str = ""
    line_ending: str = ""
    redraw_mode: bool = True

    # info modes
    info_enabled: bool = False
    stat_enabled: bool = False

    # debugging modes
    fuzzer_debug: bool = True
    fuzzer_trace: bool = False
    model_debug: bool = False
    coverage_debug: bool = False
    
    print_final = False 

    def __init__(self) -> None:
        pass

    def set_logging_modes(self):
        mode_list = CONF.logging_modes
        print(f"Logging mode list: {mode_list}")
        if "info" in mode_list:
            self.info_enabled = True
        if "stat" in mode_list:
            self.stat_enabled = True
        if "fuzzer_debug" in mode_list:
            self.fuzzer_debug = True
        if "fuzzer_trace" in mode_list:
            self.fuzzer_trace = True
        if "model_debug" in mode_list:
            self.model_debug = True
        if "coverage_debug" in mode_list:
            self.coverage_debug = True

        if not __debug__:
            if self.fuzzer_debug or self.model_debug or self.coverage_debug or self.fuzzer_trace:
                self.waring("", "Debugging mode was not enabled! Remove '-O' from python arguments")

    def error(self, msg) -> NoReturn:
        if self.redraw_mode:
            print("")
        print(f"ERROR: {msg}")
        exit(1)

    def waring(self, src, msg) -> None:
        if self.redraw_mode:
            print("")
        print(f"WARNING: [{src}] {msg}")

    def info(self, src, msg, end="\n") -> None:
        if self.info_enabled:
            if self.redraw_mode:
                print("")
            print(f"INFO: [{src}] {msg}", end=end, flush=True)

    # ==============================================================================================
    # Fuzzer
    def dbg_fuzzer(self, msg) -> None:
        if __debug__:
            if self.fuzzer_debug:
                print(f"DBG: [fuzzer] {msg}")

    def fuzzer_start(self, iterations: int, start_time):
        if self.info_enabled:
            self.one_percent_progress = iterations / 100
            self.progress = 0
            self.progress_percent = 0
            self.msg = ""
            self.line_ending = '\n' if CONF.multiline_output else ''
            self.redraw_mode = False if CONF.multiline_output else True
            self.start_time = start_time
        self.info("fuzzer", start_time.strftime('Starting at %H:%M:%S'))

    def fuzzer_start_round(self, round_id):
        if __debug__ and round_id and round_id % 1000 == 0:
            self.dbg_fuzzer(
                f"Current duration: {(datetime.today() - self.start_time).total_seconds()}")

        if self.info_enabled:
            if STAT.test_cases > self.progress:
                self.progress += self.one_percent_progress
                self.progress_percent += 1
            msg = f"\rProgress: {STAT.test_cases}|{self.progress_percent}%, "
            msg += STAT.get_brief()
            print(msg + "> Normal execution              \n\n", end=self.line_ending, flush=True)
            self.msg = msg

    def fuzzer_priming(self, num_violations: int):
        if self.info_enabled:
            print(
                self.msg + "> Priming:" + str(num_violations) + "           ",
                end=self.line_ending,
                flush=True)

    def fuzzer_nesting_increased(self):
        if self.info_enabled:
            print(
                self.msg + "> Trying max nesting:" + str(CONF.model_max_nesting) + "         ",
                end=self.line_ending,
                flush=True)

    def fuzzer_timeout(self):
        self.info("fuzzer", "\nTimeout expired")

    def fuzzer_finish(self, violation: bool):
        now = datetime.today()
        delta = now - self.start_time
        elapsed_hrs = delta.days * 24 + delta.seconds // 3600
        elapsed_mins = (delta.seconds % 3600) // 60
        elapsed_secs = delta.seconds % 60
        # elapsed_ms = delta.microseconds
        elapsed_str = f'{elapsed_hrs}hrs-{elapsed_mins}mins-{elapsed_secs}secs'
        print(f'\nDuration Elapsed: {elapsed_str}')
        print(datetime.today().strftime('Finished at %H:%M:%S'))
        if violation:
            print("Violation found - Check results")
        elif STAT.violations:
            print(f"{STAT.violations} violations found")
        else:
            print("Fuzzer finished without finding violations")
      
        
    def report_bug(self):
        print("A buggy test was found")
  
        #if self.info_enabled:
        #    now = datetime.today()
        #    print("")  # new line after the progress bar
        #    if self.stat_enabled:
        #        print(STAT, file=open('{}/{}/result'.format(CONF.debug_dir, CONF.test_case), 'a+'))
        #    print(f"Duration: {(now - self.start_time).total_seconds():.1f}", file=open('{}/{}/result'.format(CONF.debug_dir, CONF.test_case), 'a+'))
        #    print(datetime.today().strftime('Finished at %H:%M:%S'), file=open('{}/{}/result'.format(CONF.debug_dir, CONF.test_case), 'a+'))

    def trc_fuzzer_dump_traces(self, htraces, ctraces):
        if __debug__:
            if self.fuzzer_trace:
                print("")
                nprinted = 10 if len(ctraces) > 10 else len(ctraces)
                for i in range(nprinted):
                    print("..............................................................")
                    print(self.pretty_bitmap(ctraces[i], ctraces[i] > pow(2, 64)))
                    print(self.pretty_bitmap(htraces[i]))

    def fuzzer_report_violations(self, violation: EquivalenceClass, model, file=sys.stdout, round=0):
        print("\n\n================================ Violations detected ==========================\n", file=file)
        print("  Contract trace (hash):\n", file=file)
        if violation.ctrace <= pow(2, 64):
            print(f"    {violation.ctrace:064b}", file=file)
        else:
            print(f"    {violation.ctrace % MASK_64BIT:064b} [ns]\n"
                  f"    {(violation.ctrace >> 64) % MASK_64BIT:064b} [s]\n", file=file)
        print("  Hardware traces:", file=file)
        for htrace, measurements in violation.htrace_map.items():
            inputs = [(m.input_id, m.input_) for m in measurements]
            if len(inputs) < 4:
                print(f"   Inputs {inputs}:", file=file)
            else:
                print(f"   Inputs {inputs[:4]} (+ {len(inputs) - 4} ):", file=file)
            print(f"    {self.pretty_bitmap(htrace)}", file=file)

        if self.fuzzer_debug:
        # if True:
            # print details
            print("================================ Execution Trace ==============================", file=file)
            for measurements in violation.htrace_map.values():
                print("---------------------------------------------------------------------------", file=file)
                print(f"Input #{measurements[0].input_id}", file=file)
                self.file = file
                self.print_final = True
                model_debug_state = self.model_debug
                self.model_debug = True
                model.trace_test_case([measurements[0].input_], 1, round)
                self.model_debug = model_debug_state
                self.print_final = False
        print("", file=file, flush=True)

    def fuzzer_report_violation(self, base_input: Input, Id: int, ref_input: Input , tested_input: Input,test_case: str, file=sys.stdout):
        print("\n\n================================ Violation found ==========================", file=file)
        print(f"Input seed: {CONF.input_gen_seed},   Input_entropy: {CONF.input_gen_entropy_bits}\n" , file=file)
        if test_case:
            print(f"Test case: {test_case}",file=file)
        print("Base checkpoint:", file=file)
        print(f" {CONF.test_case}/checkpoint_{Id}_{base_input}\n", file=file)
        print("The Input that produced different Htraces :", file=file)
        print(f" {ref_input}      {tested_input}\n", file=file)
        print("", file=file)
        
    def print_speclative(self, instructions1, instructions2, inst_blocks1, inst_blocks2,  file=sys.stdout):
        print("\n\n------------------------------- The speculated instructions on input1--------------------------", file=file)
        print(f"Instruction Address : Instruction             :Access address   : cycle\n", file=file) 
        for pc, instruction, addr, cycle in instructions1:
            print(f"{pc}              {instruction}      {hex(addr)}              {cycle}\n", file=file) 
        if (len(inst_blocks1) > 0):
            print(f"Block Address \n", file=file)
            for pc, instruction in inst_blocks1:
                print(f"{pc}        \n", file=file)
        
        print("\n\n------------------------------- The speculated instructions on input2--------------------------", file=file)
        print(f"Instruction Address : Instruction             :Access address   : cycle\n", file=file) 
        for pc, instruction, addr, cycle in instructions2:
            print(f"{pc}              {instruction}      {hex(addr)}              {cycle}\n", file=file) 
            
        if (len(inst_blocks2) > 0):
            print(f"Block Address \n", file=file)
            for pc, instruction in inst_blocks2:
                print(f"{pc}        \n", file=file)
                
    def print_cache_diff(self, tags1, tags2,  file=sys.stdout):
        print("\n\n------------------------------- The speculated cache addresses on input1--------------------------", file=file)
        for tag in tags1:
            print(f"{tag}           \n", file=file) 
        print("\n\n------------------------------- The speculated cache addresses on input2--------------------------", file=file)
        for tag in tags2:
            print(f"{tag}           \n", file=file) 
                
                
    def print_memory_traces(self, packets_1, packets_2, file=sys.stdout):
        print("\n\n------------------------------- Input1 memory access --------------------------", file=file)
        print(f"Instruction Address - Sequence Number : Instruction : Access address : cycle\n", file=file) 
        for pc, sq, instruction, addr, cycle in packets_1:
            print(f"{hex(pc)} - {sq}        {instruction}      {hex(addr)}              {cycle}\n", file=file) 
        
        print("\n\n------------------------------- Input2 memory access --------------------------", file=file)
        print(f"Instruction Address - Sequence Number : Instruction : Access address : cycle\n", file=file) 
        for pc, sq, instruction, addr, cycle in packets_2:
            print(f"{hex(pc)} - {sq}        {instruction}      {hex(addr)}              {cycle}\n", file=file) 
    # ==============================================================================================
    # Model
    # def dbg_model_header(self, input_id):
    #     if self.model_debug:
    #         print(f"\n                     ##### Input {input_id} #####")
    
    def dbg_model(self, src: str, msg: str):
        if self.model_debug:
            print(f"DBG: [model] {src}: {msg}")
    
    def dbg_model_mem_access(self, normalized_address, val, is_store):
        if self.model_debug:
            type_ = "store:" if is_store else "load: "
            file = sys.stdout
            if(self.print_final):
                file = self.file
            print(f"  > {type_} +0x{normalized_address:x} = 0x{val:x}",file=file)

    def dbg_model_instruction(self, name, normalized_address, model):
        if self.model_debug:
            file = sys.stdout
            if(self.print_final):
                file = self.file
            if model.in_speculation:
                print(f"transient 0x{normalized_address:<2x}: {name}", file=file)
            else:
                print(f"0x{normalized_address:<2x}: {name}", file=file)            
            # print(f"{normalized_address:2x}: {name}", file=file)
            model.print_state(oneline=True, file=file)

    def dbg_model_rollback(self, address, base):
        if self.model_debug:
            print(f"ROLLBACK to 0x{address - base:x}")
    # ==============================================================================================
    # Coverage
    def dbg_report_coverage(self, round_id, msg):
        if __debug__:
            if round_id and round_id % 100 == 0 and self.coverage_debug:
                print(f"\nDBG: [coverage] {msg}")

    # ==============================================================================================
    # Helpers
    def pretty_bitmap(self, bits: int, merged=False):
        if not merged:
            s = f"{bits:064b}"
        else:
            s = f"{bits % MASK_64BIT:064b} [ns]\n" \
                f"{(bits >> 64) % MASK_64BIT:064b} [s]"
        s = s.replace("0", "_").replace("1", "^")
        return s


LOGGER = Logger()


# ==================================================================================================
# Small helper functions
# ==================================================================================================
def bit_count(n: int) -> int:
    count = 0
    n = abs(n)
    while n:
        count += 1
        # clear top bit of n
        n &= n - 1
    return count


class NotSupportedException(Exception):
    pass

def rmtree_if_exists(tree: str) -> None:
    try:
        shutil.rmtree(tree)
    except FileNotFoundError:
        pass
