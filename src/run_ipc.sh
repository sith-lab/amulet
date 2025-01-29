#!/bin/bash

## example usages of Revizor with IPC orchestration

# fuzz InvisiSpec FuturisticSpec with CT-SEQ:

mkdir -p logs

for i in `seq 1 100`; do
    python3.11 ./cli.py fuzz -s x86/isa_spec/base.json --ruby --InvisiSpec --InvisiSpec_Futuristic -i 70 -n 1000 -c ../docker/docker_invisispec/docker_gem5_v1_final_cache_ipcFP.yaml -p futuristic-ct-seq-2mshrs-$i &> logs/futuristic-ct-seq-2mshrs-$i.txt &
done

# run violation analysis script on the violation:
#   python3.11 analyse_ipc_violation.py results/Xhrs-Ymins-Zsecs/ --args '-s x86/isa_spec/base.json --ruby --InvisiSpec --InvisiSpec_FuturisticSpec -i 10 -n 1 -c ../docker/docker_invisispec/docker_gem5_v1_final_cache_ipcFP.yaml'
# this should give you the instruction which caused the violation, 

# fuzz  UnsafeBaseline with CT-COND:
# python3.11 ./cli.py fuzz -s x86/isa_spec/base.json --ruby --InvisiSpec --InvisiSpec_UnsafeBaseline -i 10 -n 1000 -c ../docker/docker_invisispec/docker_gem5_v1_final_cache_ipc_ct_cond.yaml

