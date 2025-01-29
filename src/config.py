"""
File: Fuzzing Configuration Options

Copyright (C) Microsoft Corporation
SPDX-License-Identifier: MIT
"""
from typing import List
from enum import Enum
import os


class ConfCls:
    config_path: str = ""
    # ==============================================================================================
    # Fuzzer
    no_priming = False  ## No need for priming for gem5!
    min_primer_size: int = 1  # deprecated? # better leave at 1; otherwise may fail to build primer
    max_primer_size: int = 1000  # deprecated?
    # ==============================================================================================
    # Generator
    instruction_set = "x86-64"
    generator = "random"
    test_case_generator_seed: int = 0
    min_bb_per_function = 2
    max_bb_per_function = 2
    test_case_size = 24
    avg_mem_accesses = 12
    randomized_mem_alignment: bool = True
    avoid_data_dependencies: bool = False
    generate_memory_accesses_in_pairs: bool = False
    memory_access_zeroed_bits: int = 6
    supported_categories = [
        # Base x86
        "BASE-BINARY",
        "BASE-BITBYTE",
        "BASE-CMOV",
        "BASE-COND_BR",
        "BASE-CONVERT",
        "BASE-DATAXFER",
        "BASE-FLAGOP",
        "BASE-LOGICAL",
        "BASE-MISC",
        "BASE-NOP",
        "BASE-POP",
        "BASE-PUSH",
        "BASE-SEMAPHORE",
        "BASE-SETCC",
        "BASE-STRINGOP",

        # "BASE-ROTATE",      # Unknown bug in Unicorn - emulated incorrectly
        # "BASE-SHIFT",       # Unknown bug in Unicorn - emulated incorrectly

        # "BASE-UNCOND_BR",   # Not supported: Complex control flow
        # "BASE-CALL",        # Not supported: Complex control flow
        # "BASE-RET",         # Not supported: Complex control flow

        # "BASE-SEGOP",       # Not supported: System instructions
        # "BASE-INTERRUPT",   # Not supported: System instructions
        # "BASE-IO",          # Not supported: System instructions
        # "BASE-IOSTRINGOP",  # Not supported: System instructions
        # "BASE-SYSCALL",     # Not supported: System instructions
        # "BASE-SYSRET",      # Not supported: System instructions
        # "BASE-SYSTEM",      # Not supported: System instructions

        # Extensions
        "SSE-MISC",  # SFENCE
        "SSE2-MISC",  # LFENCE, MFENCE
        "CLFLUSHOPT-CLFLUSHOPT",
        "CLFSH-MISC",
        # "BMI1",
    ]
    instruction_blocklist = [
        # Hard to fix:
        # - STI - enables interrupts, thus corrupting the measurements; CLI - just in case
        "STI", "CLI",
        # - CMPXCHG8B - Unicorn doesn't execute the mem. access hook
        #   bug: https://github.com/unicorn-engine/unicorn/issues/990
        "CMPXCHG8B", "LOCK CMPXCHG8B",
        # - Undefined instructions are, well, undefined
        "UD", "UD2",
        # - Incorrect emulation
        "CPUID",
        # - Requires support of segment registers
        "XLAT", "XLATB",
        # - Requires special instrumentation to avoid #DE faults
        "IDIV", "REX IDIV",
        # - Requires complex instrumentation
        "ENTERW", "ENTER", "LEAVEW", "LEAVE",

        # Stringops - under construction
        "CMPSB", "CMPSD", "CMPSW",
        "MOVSB", "MOVSD", "MOVSW",

        "REPE LODSB", "REPE LODSD", "REPE LODSW",
        "REPE SCASB", "REPE SCASD", "REPE SCASW",
        "REPE STOSB", "REPE STOSD", "REPE STOSW",
        "REPE CMPSB", "REPE CMPSD", "REPE CMPSW",
        "REPE MOVSB", "REPE MOVSD", "REPE MOVSW",

        "REPNE LODSB", "REPNE LODSD", "REPNE LODSW",
        "REPNE SCASB", "REPNE SCASD", "REPNE SCASW",
        "REPNE STOSB", "REPNE STOSD", "REPNE STOSW",
        "REPNE CMPSB", "REPNE CMPSD", "REPNE CMPSW",
        "REPNE MOVSB", "REPNE MOVSD", "REPNE MOVSW",
        # - not supported
        "LFENCE", "MFENCE", "SFENCE", "CLFLUSH", "CLFLUSHOPT",
         # unmapped address
        "BTS", "LOCK BTS", "BTR", "LOCK BTR", "BTC", "LOCK BTC", "BT",

        # - cause gem5 to crash ("build/X86/arch/x86/faults.cc:130: panic: Unrecognized/invalid instruction executed")
        "LODSD", "LODSW", "LODSB", "STOSD", "STOSW", "STOSB", "REPNE LODSD", "REPNE LODSB",
        "REPNE LODSW", "REPNE MOVSB", "REPNE STOSD", "REPNE STOSB", "REPNE STOSW",

        #wrong implementation
        "LAHF", "SAHF"

    ]  # yapf: disable
    extended_instruction_blocklist: List[str] = []
    verbose = False
    # x86 executor internally uses R15, R14, RSP, RBP and, thus, they are excluded
    # segment registers are also excluded as we don't support their handling so far
    # same for CR* and DR*
    gpr_blocklist = [
        # free - rax, rbx, rcx, rdx, rdi, rsi
        'R8', 'R9', 'R10', 'R11', 'R12', 'R13', 'R14', 'R15', 'RSP', 'RBP',
        'R8D', 'R9D', 'R10D', 'R11D', 'R12D', 'R13D', 'R14D', 'R15D', 'ESP', 'EBP',
        'R8W', 'R9W', 'R10W', 'R11W', 'R12W', 'R13W', 'R14W', 'R15W', 'SP', 'BP',
        'R8B', 'R9B', 'R10B', 'R11B', 'R12B', 'R13B', 'R14B', 'R15B', 'SPL', 'BPL',
        'ES', 'CS', 'SS', 'DS', 'FS', 'GS',
        'CR0', 'CR2', 'CR3', 'CR4', 'CR8',
        'DR0', 'DR1', 'DR2', 'DR3', 'DR4', 'DR5', 'DR6', 'DR7'
        ,'RIP'
    ]  # yapf: disable
    _no_generation: bool = False
    # ==============================================================================================
    # Input Generator
    input_generator: str = 'random'
    input_gen_seed: int = 0  # 0 means random seed
    input_gen_entropy_bits: int = 3
    input_main_region_size: int = 4096  # in bytes
    input_assist_region_size: int = 4096
    input_register_region_size: int = 64
    inputs_per_class: int = 2

    # ==============================================================================================
    # Model
    model: str = 'x86-unicorn'
    contract_execution_clause: List[str] = ["seq"]  # options: "seq", "cond", "bpas"
    contract_observation_clause: str = 'ct'
    model_max_nesting: int = 5
    model_max_spec_window: int = 250

    # ==============================================================================================
    # Executor
    executor: str = 'x86-gem5'
    executor_mode: str = 'P+P'
    executor_warmups: int = 50
    executor_repetitions: int = 20
    executor_max_outliers: int = 2
    executor_taskset: int = 0
    enable_ssbp_patch: bool = True
    enable_pre_run_flush: bool = True
    enable_assist_page: bool = True

    # ==============================================================================================
    # Analyser
    analyser: str = 'equivalence-classes'
    analyser_permit_subsets: bool = True
    # ==============================================================================================
    # Coverage
    coverage_type: str = 'none'
    feedback_driven_generator: bool = False  # temporary unused
    # ==============================================================================================
    # Output
    multiline_output: bool = False
    logging_modes: List[str] = ["info", "stat", "fuzzer_debug", "fuzzer_trace"]
    debug_dir: str = 'debug'
    test_case: str = ''
    save_stats: bool = True
    measure_uarch_diversity: bool = False

    # InvisiSpec
    InvisiSpec = False
    InvisiSpec_UnsafeBaseline = False
    InvisiSpec_FuturisticSpec = False
    # Apply patch for speculative eviction vulnerability discovered by AMuLeT.
    InvisiSpec_apply_spec_eviction_patch = False

    # STT
    STT = False
    STT_UnsafeBaseline = False
    STT_FuturisticSpec = False

    # DOLMA
    # - 0: Baseline (no protection)
    # - 1: DOLMA-Default (M+R)
    # - 2: DOLMA-Conservative (M+R)
    # - 3: DOLMA-Default (M)
    # - 4: DOLMA-Conservative (M)
    class DOLMA_modes(Enum):
        Baseline = 0
        DOLMA_Default_MR = 1
        DOLMA_Conservative_MR = 2
        DOLMA_Default_M = 3
        DOLMA_Conservative_M = 4  # Most analogous to improved standard STT
        STT_Spectre_MR = 5  # STT with M+R protections
        STT_Futuristic_MR = 6
        STT_Spectre_M = 7  # Standard STT
        STT_Futuristic_M = 8
    DOLMA = False  # If fuzzing DOLMA
    DOLMA_mode = False  # Override if using
    
    # SpecLFB
    SpecLFB = False
    SpecLFB_UnsafeBaseline = False

    # CleanupSpec
    CleanupSpec = False
    CleanupSpec_UnsafeBaseline = False

    # Gem5
    gem5_location = ""
    gem5_checkpoint = "{root}/checkpoint".format(root=gem5_location)
    gem5_output_location = "{root}/m5out".format(root=gem5_location)
    gem5_binary = "{root}/build/X86/gem5.opt".format(root=gem5_location)
    # gem5_se = "{root}/attacks/se_run_experiment.py".format(root=gem5_location)
    gem5_se = "{root}/configs/example/se.py".format(root=gem5_location)
    gem5_config_ipc_template = "{root}/configs/revizor/ipc.py"
    gem5_test_case_path: str = "test_case"
    gem5_trace_mode: str = "data_cache"
    gem5_batch_size: int = 1
    gem5_restore: int = 0
    gem5_save_checkpoints: bool = False
    # options: "simple" (start a new gem5 process for each test case + input)
    #          "ipc"    (start a new gem5 process only rarely, sending inputs by IPC)
    gem5_orchestration: str = "simple"
    # number of simultaneous gem5 processes to have running
    gem5_ipc_parallelism: int = 4
    # Don't truncate log file after each run of gem5.
    # This can use a lot of disk space for long runs of revizor, but it is useful for debugging.
    gem5_ipc_persist_log: bool = False
    # Show output of gem5 processes over stdout/stderr.
    gem5_ipc_show_output: bool = False
    gem5_enable_cross_test_case_checkpoints = False
    process_run = ''
    profile: bool = False
    
    # CPU config
    cpu_type: str = "DerivO3CPU"
    cpu_clock: str = "2GHz"
    sys_clock: str = "2GHz"
    
    # Ruby-specific: Number of TBEs for L1, L2 caches
    # 256 default, 2 to test for MSHR contention
    tbe_count: int = 256
    
    def parse_size_as_bytes(self, size: str | int) -> int:
        ''' converts a human-readable size (e.g. 10kB) to the number of bytes (e.g. 10240) '''
        if type(size) == int: return size
        if size.isdigit(): return int(size) # Return byte size if already in bytes
        size = size.lower()
        if size.endswith('kb'): return int(size[:-2]) << 10
        if size.endswith('mb'): return int(size[:-2]) << 20
        if size.endswith('gb'): return int(size[:-2]) << 30
        if size.endswith('tb'): return int(size[:-2]) << 40
        if size.endswith('b'): return int(size[:-1]) # Last case: assume bytes
        raise ValueError(f'unrecognized size format: {size}')
    
    # L1, L2 caches
    # Stock dolma: 32768 L1D 8-way assoc, 32768 L1I 2-way assoc, 64B line size, 2MB L2 16-way assoc
    # STT results config: 32768 L1D 8-way-assoc, 8192 L1I 2-way assoc, 64B line size, 2MB L2 8-way assoc
    # Use STT (match STT results)!
    l1d_size: str = "32kB"
    l1d_assoc: int = 8
    l1i_size: str = "8kB"
    l1i_assoc: int = 2
    cacheline_size: int = 64 # Should always be in bytes
    l2_size: str = "2MB"
    l2_assoc: int = 8
    
    # size of data TLB
    dtb_entries: int = 64
    
    # Gem5 debug flags
    debug = False
    debug_flags = []

    # Can have multiple filters
    # Options: "squash", "content", "cache_visible"
    trace_filter: List[str] = ["squash"] 

    ## Dictionary of hardware trace options
    gem5_attacker_mode = {}
    
    # Use special run options if analysis run enabled
    analysis_run = False
    
    ## Example	
    ##
    ##  {
    ##  	"sources" : ["data_cache","instr_cache","dtlb","branch_pred_state"]
    ##  }	

    def set(self, name, value):
        options = {
            'instruction_set': ["x86-64"],
            'generator': ["random"],
            'input_generator': ["random"],
            'model': ['x86-unicorn'],
            'executor': ['x86-intel', 'x86-gem5'],
            'executor_mode': ['P+P', 'F+R', 'E+R'],
            'contract_observation_clause': [
                'l1d', 'memory', 'ct', 'pc', 'ct-nonspecstore', 'ctr', 'arch'
            ],
            'coverage_type': ['dependent-pairs', 'none'],
        }

        if name[0] == "_":
            ConfigException(f"Attempting to set an internal configuration variable {name}.")
        if getattr(self, name, None) is None:
            ConfigException(f"Unknown configuration variable {name}.\n"
                            f"It's likely a typo in the configuration file.")
        if type(self.__getattribute__(name)) != type(value):
            ConfigException(f"Wrong type of the configuration variable {name}.\n"
                            f"It's likely a typo in the configuration file.")

        # value checks
        if options.get(name, '') != '' and value not in options[name]:
            ConfigException(f"Unknown value '{value}' of configuration variable '{name}'")
        if (self.input_main_region_size % 4096 != 0) or \
                (self.input_assist_region_size % 4096 != 0):
            ConfigException("Inputs must be page-aligned")

        # special handling
        if name == "extended_instruction_blocklist":
            self.instruction_blocklist.extend(value)

        self.__setattr__(name, value)

    def sanity_check(self):
        if self.executor_max_outliers > 20:
            print(f"WARNING: Configuration: Are you sure you want to"
                  f" ignore {self.executor_max_outliers} outliers?")
        if self.coverage_type == "none":
            self.feedback_driven_generator = False

    def gem5_config_ipc(self):
        return self.gem5_config_ipc_template.format(root=self.gem5_location)

CONF = ConfCls()


class ConfigException(SystemExit):
    pass
