from enum import Enum
import subprocess
import os
import datetime
import json

class Boolean(Enum):
    FALSE = '0'
    TRUE = '1'

class Gem5Options(Enum):
    CHECKPOINT_AT_END = 'checkpoint-at-end'
    CHECKPOINT_DIR = 'checkpoint-dir={}'
    L1D_SIZE = 'l1d_size={}'
    L1I_SIZE = 'l1i_size={}'
    L2_CACHE = 'l2cache' 
    L1_TRACES = 'l1traces'
    STT = 'stt'
    RUBY_CACHE = 'ruby'
    LEGACY_CACHE = 'caches'
    CPU_TYPE = 'cpu-type={}'
    RESTORE_WITH_CPU = 'restore-with-cpu={}'

    def string(self, value = None):
        if not value:
            return self.value
        return self.value.format(value)

class InvisiSpecOptions(Enum):
    SCHEME = 'scheme={}'
    TSO = 'needsTSO={}' # 0/1

    def string(self, value = None):
        return self.value.format(value)

class InvisispecScheme(Enum):
        UNSAFE_BASELINE = 'UnsafeBaseline'
        SPECTRE_SAFEFENCE = 'SpectreSafeFence'
        FUTURISTIC_SAFEFENCE = 'FuturisticSafeFence'
        SPECTRE_SAFE_INIVISIBLESPEC = 'SpectreSafeInvisibleSpec'
        FUTURISTIC_SAFE_INVISIBLESPEC = 'FuturisticSafeInvisibleSpec'

class DolmaOptions(Enum):
    MODE = 'mode={}'
    STT = 'stt={}' # 0/1

    def string(self, value = None):
        return self.value.format(value)

class DolmaMode(Enum):
    BASELINE = '0'
    MR_DOLMA_DEFAULT = '1'
    MR_DOLMA_CONSERVATIVE = '2'
    M_DOLMA_DEFAULT = '3'
    M_DOLMA_CONSERVATIVE = '4'

class STTOptions(Enum):
    THREAT_MODEL = 'threat_model={}'
    # All of these below are 0/1
    NEEDS_TSO = 'needsTSO={}'
    STT = 'STT={}'
    IMPLICIT_CHANNEL = 'implicit_channel={}'

    def string(self, value = None):
        return self.value.format(value)

class STTThreatModel(Enum):
    UNSAFE_BASELINE = 'UnsafeBaseline'
    SPECTRE_SAFE_FENCE = 'SpectreSafeFence'
    FUTURISTIC_SAFE_FENCE = 'FuturisticSafeFence'

class SPTOptions(Enum):
    THREAT_SCHEME = 'scheme={}'
    # All of these below are 0/1
    APPLY_DDIFT = 'applyDDIFT={}'
    ENABLE_SHADOW_L1 = 'enableShadowL1={}'
    BOTTOMLESS_SHADOW_L1 = 'bottomlessShadowL1={}'
    DISABLE_UNTAINT = 'disableUntaint={}'
    FWD_UNTAINT = 'fwdUntaint={}'
    BWD_UNTAINT = 'bwdUntaint={}'
    IDEAL_UNTAINT = 'idealUntaint={}'
    TRACK_INSTS_FILE = 'trackInstsFile=all'
    NEEDS_TSO='needsTSO=1'

    def string(self, value = None):
        return self.value.format(value)

class SPTThreatScheme(Enum):
    UNSAFE_BASELINE = 'UnsafeBaseline'
    SPECTRE_SAFE_FENCE = 'SpectreSafeFence'
    FUTURISTIC_SAFE_FENCE = 'FuturisticSafeFence'

class SDOOptions(Enum):
    THREAT_SCHEME = 'scheme={}'
    MEM_MODEL = 'mem_model={}'
    THREAT_MODEL = 'threat_model={}'
    STT = 'stt={}' # 0/1
    IMP_CHANNEL = 'impChannel={}' # 0/1
    TLB_DEFENSE = 'TLB_defense={}'
    LOCATION_PREDICTOR = 'pred_type={}' # [static, greedy, hysteresis, local, loop, random, perfect]

    def string(self, value = None):
        return self.value.format(value)

class SDOThreatScheme(Enum):
    UNSAFE_BASELINE = 'UnsafeBaseline'
    DELAY_EXECUTE = 'DelayExecute'
    SDO = 'SDO'

class SDOMemModel(Enum):
    TSO = 'TSO'
    RC = 'RC'

class SDOThreatModel(Enum):
    SPECTRE = 'Spectre'
    FUTURISTIC = 'Futuristic'

class SDOTlbDefense(Enum):
    NO = 'No'
    SDO = 'SDO'
    UNSAFE_DELAY = 'UnsafeDelay'

class PinnedLoadOptions(Enum):
    THREAT_MODEL = 'threat-model={}' # [Unsafe, Spectre, Comprehensive]
    HARDWARE_SCHEME = 'hw={}' # [Unsafe, Fence, DOM, STT]

    def string(self, value):
        return self.value.format(value)

class PinnedLoadThreatModel(Enum):
    UNSAFE = 'Unsafe'
    SPECTRE = 'Spectre'
    COMPREHENSIVE = 'Comprehensive'

class PinnedLoadHardware(Enum):
    UNSAFE = 'Unsafe'
    FENCE = 'Fence'
    DOM = 'DOM'
    STT = 'STT' 

class CleanupSpecOptions(Enum):
    CACHE_SCHEME = 'scheme_cleanupcache={}'
    INVISIPEC_SCHEME = 'scheme_invisipec=UnsafeBaseline' # Always set to unsafe baseline in cleanupspec's experiment scripts

class CleanupSpecCacheScheme(Enum):
    UNSAFE_BASELINE = 'UnsafeBaseline'
    R_L2 = 'RandL2'
    L1R_REPL = 'L1RandRepl'
    L1LRU_REPL = 'L1LRURepl'
    R_L2_L1R_REPL = 'RandL2_L1RandRepl'
    CLEANUP_L1 = 'Cleanup_FOR_L1'
    CLEANUP_L1_L2 = 'Cleanup_FOR_L1L2'

class Experiment:
    def __init__(self, name, 
                 gem5_path = '/home/arpitgogia/Lab/gem5', 
                 gem5_output = 'm5out',
                 gem5_binary = 'build/X86/gem5.debug', 
                 gem5_se = 'configs/example/se.py',
                 gem5_options = [],
                 gem5_trace_mode = 'data_cache',
                 gem5_restore = 0,
                 revizor_path = '/home/arpitgogia/Lab/revizor',
                 revizor_output = 'experiments',
                 revizor_test_case = None,
                 revizor_num_inputs = 20,
                 revizor_num_test_cases = 10,
                 revizor_yaml_config = None):
        self.name = name
        self.gem5_path = gem5_path
        self.gem5_output = f'{gem5_path}/{gem5_output}'
        self.gem5_binary = f'{gem5_path}/{gem5_binary}'
        self.gem5_se = f'{gem5_path}/{gem5_se}'
        self.gem5_options = gem5_options
        self.revizor_path = revizor_path
        self.revizor_output = f'{revizor_output}'
        self.revizor_test_case = revizor_test_case
        self.revizor_num_inputs = revizor_num_inputs
        self.revizor_num_test_cases = revizor_num_test_cases
        self.revizor_yaml_config = revizor_yaml_config
        self.gem5_restore = gem5_restore
        self.hsh = hash(self)

    def revizor_command(self):
        cmd = [f'{self.revizor_path}/src/cli.py fuzz -s x86/isa_spec/base.json']
        cmd.append(f'-i {self.revizor_num_inputs}')
        cmd.append(f'-n {self.revizor_num_test_cases}')
        if self.revizor_test_case:
            cmd.append(f'-t {self.revizor_test_case}')
        if self.revizor_yaml_config:
            cmd.append(f'-c {self.revizor_yaml_config}')

        # gem5 config
        cmd.append(f'--gem5-path {self.gem5_path}')
        cmd.append(f'--gem5-output {self.gem5_output}')
        cmd.append(f'--gem5-binary {self.gem5_binary}')
        cmd.append(f'--gem5-se {self.gem5_se}')
        cmd.append(f'--gem5-options \"{",".join(self.gem5_options)}\"')
        cmd.append(f'--gem5-restore {self.gem5_restore}')
        cmd.append(f'--output-dir {self.revizor_output}')
        cmd.append(f'--name {self.name}')
        return cmd

    def run(self):
        from pathlib import Path
        os.chdir(f'{self.revizor_path}/src')
        Path(f'{self.revizor_path}/src/{self.revizor_output}/{self.name}').mkdir(parents=True)
        revizor = subprocess.run(' '.join(self.revizor_command()), shell=True)
        revizor.check_returncode()
        json.dump(self.__dict__, open(f'{self.revizor_path}/src/{self.revizor_output}/{self.name}/config.json', 'w+'))

        result = open(f'{self.revizor_path}/src/{self.revizor_output}/{self.name}/result')
        for l in result:
            if 'Violations detected' in l:
                return True
        return False


### To permute through values of a property:
# for threat_scheme in SDOThreatScheme._member_names_:
#     print(threat_scheme.value)

experiments = [
    # SDO Example
    Experiment(
        'sdo',
        gem5_path='/home/arpitgogia/Lab/sdo',
        gem5_binary='build/X86_MESI_Three_Level/gem5.debug',
        gem5_options=[
            Gem5Options.L1_TRACES.string(),
            Gem5Options.L1D_SIZE.string('64kB'),
            Gem5Options.L1I_SIZE.string('16kB'),
            Gem5Options.L2_CACHE.string(),
            Gem5Options.RUBY_CACHE.string(),
            Gem5Options.CPU_TYPE.string('DerivO3CPU'),
            Gem5Options.RESTORE_WITH_CPU.string('DerivO3CPU'),
            SDOOptions.THREAT_SCHEME.string(SDOThreatScheme.SDO.value),
            SDOOptions.MEM_MODEL.string(SDOMemModel.TSO.value),
            SDOOptions.THREAT_MODEL.string(SDOThreatModel.SPECTRE.value),
            SDOOptions.IMP_CHANNEL.string(Boolean.TRUE),
            SDOOptions.TLB_DEFENSE.string(SDOTlbDefense.SDO.value),
            SDOOptions.STT.string(Boolean.TRUE),
            # Gem5Options.CHECKPOINT_AT_END.string(),
            # Gem5Options.CHECKPOINT_DIR.string('/home/arpitgogia/Lab/dolma/checkpoint')
        ],
        revizor_test_case='tests/spectre_v1.asm'
    )
    # SPT Example
    # Experiment(
    #     'spt',
    #     gem5_path='/home/arpitgogia/Lab/SPT',
    #     gem5_options=[
    #         Gem5Options.L1_TRACES.string(),
    #         Gem5Options.L1D_SIZE.string('64kB'),
    #         Gem5Options.L1I_SIZE.string('16kB'),
    #         Gem5Options.L2_CACHE.string(),
    #         Gem5Options.RUBY_CACHE.string(),
    #         Gem5Options.CPU_TYPE.string('DerivO3CPU'),
    #         Gem5Options.RESTORE_WITH_CPU.string('DerivO3CPU'),
    #         SPTOptions.NEEDS_TSO.string(),
    #         SPTOptions.THREAT_SCHEME.string('SpectreSafeFence'),
    #         SPTOptions.ENABLE_SHADOW_L1.string('1'),
            # Gem5Options.CHECKPOINT_AT_END.string(),
            # Gem5Options.CHECKPOINT_DIR.string('/home/arpitgogia/Lab/dolma/checkpoint')
        # ],
        # revizor_test_case='tests/spectre_v1.asm',
        # gem5_restore=1
    # ),
    # DOLMA Example
    # Experiment(
    # 'dolma-mode-3-stt',
    # gem5_path='/home/arpitgogia/Lab/dolma',
    # gem5_binary='build/X86_MESI_Two_Level/gem5.debug',
    # gem5_se='attacks/se_run_experiment.py',
    # gem5_options = [
    #     Gem5Options.L1_TRACES.string(),
    #     Gem5Options.L1D_SIZE.string('64kB'),
    #     Gem5Options.L1I_SIZE.string('16kB'),
    #     Gem5Options.L2_CACHE.string(),
    #     Gem5Options.LEGACY_CACHE.string(),
    #     Gem5Options.CPU_TYPE.string('DerivO3CPU'),
    #     Gem5Options.RESTORE_WITH_CPU.string('DerivO3CPU'),
    #     DolmaOptions.MODE.string('1'),
    #     DolmaOptions.STT.string('0'),
    #     Gem5Options.CHECKPOINT_AT_END.string(),
    #     Gem5Options.CHECKPOINT_DIR.string('/home/arpitgogia/Lab/dolma/checkpoint')
    # ],
    # revizor_test_case='tests/spectre_v1.asm',
    # gem5_restore=1)
    # Invisispec example
    # Experiment(
    #     'invisispec-unsafebaseline',
    #     gem5_path='/home/arpitgogia/Lab/InvisiSpec-1.0',
    #     gem5_binary='build/X86/gem5.debug',
    #     gem5_options = [
    #         Gem5Options.L1_TRACES.string(),
    #         Gem5Options.L1D_SIZE.string('64kB'),
    #         Gem5Options.L1I_SIZE.string('16kB'),
    #         Gem5Options.L2_CACHE.string(),
    #         Gem5Options.RUBY_CACHE.string(),
    #         InvisiSpecOptions.SCHEME.string(InvisiSpecOptions.Scheme.UNSAFE_BASELINE.value),
    #         InvisiSpecOptions.TSO.string(Boolean.FALSE),
    #         Gem5Options.CPU_TYPE.string('DerivO3CPU'),
    #         Gem5Options.RESTORE_WITH_CPU.string('DerivO3CPU'),
    #         # Gem5Options.CHECKPOINT_AT_END.string(),
    #         # Gem5Options.CHECKPOINT_DIR.string('/home/arpitgogia/Lab/dolma/checkpoint')
    #     ],
    #     revizor_test_case='tests/spectre_v1.asm'),

    # THE BELOW CONFIGURATIONS ARE UNTESTED, have a look at the README (relative to the project dir) in case something is missing

    # Pinned load examples (README: scripts/README.md or scripts/spec.sh)
    # Experiment(
    #     'pinnedloads',
    #     gem5_path='/home/arpitgogia/Lab/PinnedLoads',
    #     gem5_binary='build/X86_MESI_Two_Level/gem5.debug',
    #     gem5_options = [
    #         Gem5Options.L1_TRACES.string(),
    #         Gem5Options.L1D_SIZE.string('64kB'),
    #         Gem5Options.L1I_SIZE.string('16kB'),
    #         Gem5Options.L2_CACHE.string(),
    #         Gem5Options.RUBY_CACHE.string(),
    #         PinnedLoadOptions.THREAT_MODEL.string(PinnedLoadThreatModel.COMPREHENSIVE.value),
    #         PinnedLoadOptions.HARDWARE_SCHEME.string(PinnedLoadHardware.FENCE.value),
    #         Gem5Options.CPU_TYPE.string('DerivO3CPU'),
    #         Gem5Options.RESTORE_WITH_CPU.string('DerivO3CPU'),
    #         # Gem5Options.CHECKPOINT_AT_END.string(),
    #         # Gem5Options.CHECKPOINT_DIR.string('/home/arpitgogia/Lab/dolma/checkpoint')
    #     ],
    #     revizor_test_case='tests/spectre_v1.asm')
    
    
    # Cleanup spec example (README: exp_script/run_spectre.sh)
    # Experiment(
    #     'cleanupspec-final',
    #     gem5_path='/home/arpitgogia/Lab/cleanupspec',
    #     gem5_binary='build/X86_MESI_Two_Level/gem5.debug',
    #     gem5_se='configs/example/spectre_config.py',
    #     gem5_options = [
    #         Gem5Options.L1_TRACES.string(),
    #         Gem5Options.L1D_SIZE.string('64kB'),
    #         Gem5Options.L1I_SIZE.string('16kB'),
    #         Gem5Options.L2_CACHE.string(),
    #         Gem5Options.RUBY_CACHE.string(),
    #         CleanupSpecOptions.CACHE_SCHEME.string(CleanupSpecCacheScheme.CLEANUP_L1_L2.value),
    #         Gem5Options.CPU_TYPE.string('DerivO3CPU'),
    #         Gem5Options.RESTORE_WITH_CPU.string('DerivO3CPU'),
    #         # Gem5Options.CHECKPOINT_AT_END.string(),
    #         # Gem5Options.CHECKPOINT_DIR.string('/home/arpitgogia/Lab/dolma/checkpoint')
    #     ],
    #     revizor_test_case='tests/spectre_v1.asm')
    ]

for e in experiments:
    start = datetime.datetime.now()
    violation_detected = e.run()
    end = datetime.datetime.now()
    print(f'Experiment {e.name} took {(end - start).seconds} seconds')
    print(f'Violation Detected? {violation_detected}')
