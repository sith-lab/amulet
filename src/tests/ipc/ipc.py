import sys, os.path
import pickle
sys.path.append('/code/revizor-docker/src')
import ipc_orchestration
from typing import Dict
import yaml
from config import CONF
from glob import glob
from subprocess import run
import shutil

config_path = '/code/revizor-docker/docker/docker_invisispec/docker_gem5_v1_final_cache_ipc.yaml'

CONF.config_path = config_path
with open(config_path, "r") as f:
    config_update: Dict = yaml.safe_load(f)
for var, value in config_update.items():
    CONF.set(var, value)
CONF.ruby = True
CONF.STT = False
CONF.CleanupSpec = False
CONF.debug = False
CONF.debug_flags = ''
CONF.result_dir = 'results'
CONF.set('InvisiSpec', True)
CONF.set('InvisiSpec_UnsafeBaseline', True)
assert CONF.gem5_orchestration == 'ipc'

command =  ['/code/gem5-docker/build/X86/gem5.opt', '--outdir=/code/gem5-docker/m5out', '/code/gem5-docker/configs/revizor/ipc.py', '--cpu-type=DerivO3CPU', '--l1d_size=32kB', '--l1i_size=32kB', '--l2cache', '--ruby', '--dump-caches', '--num-cpu=1', '--needsTSO=0', '--scheme=UnsafeBaseline', '--rel-max-tick=5000000', '--checkpoint-dir=/code/gem5-docker/checkpoint', '--checkpoint-at-end']
ipc = ipc_orchestration.Gem5IPCOrchestration()
ipc.restart_gem5(command)

with open('inputs.txt', 'r') as f:
    inputs = [line.strip() for line in f]

class PseudoTestCase:
    def __init__(self, bin_path: str):
        self.bin_path = bin_path

test_case = PseudoTestCase('/code/revizor-docker/src/load.o')
ipc.load_test_case(test_case)

for input_filename in inputs:
    if input_filename == '-':
        ipc.restart_gem5(command)
    else:
        with open(input_filename, 'rb') as i:
            inp = pickle.load(i)
        ipc.trace_test_case(inp)
        print(ipc.get_gem5_output())
        tags = glob('{loc}/tags*'.format( loc=CONF.gem5_checkpoint))
        assert len(tags) == 1
        print(tags)
        with open(f"{tags[0]}/m5.tag", 'r') as f:
            lines=f.readlines()
            print(lines[0])
            #print(lines[6])
            print(lines[7])
        run(["rm", "-rf", tags[0]])
