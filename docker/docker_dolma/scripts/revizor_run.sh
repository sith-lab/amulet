#!/bin/bash
export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export GEM5_DIR=$CODE_DIR/gem5-docker;

# Compile: 
# cd /code/gem5-docker && python2.7 `which scons` -j$(nproc) build/X86/gem5.opt --default=X86 PROTOCOL=MESI_Two_Level --ignore-style
# Kill: kill $(pidof python3.11)

cd $RVZR_DIR/src
mkdir -p logs
# Example usages of Revizor with IPC orchestration
# for i in $(seq 1 100); do
#     python3.11 ./cli.py fuzz -s x86/isa_spec/base.json --DOLMA DOLMA_Conservative_M -i 70 -n 200 -c ../docker/docker_dolma/yamls/docker_gem5_v1_final_cache_tlb.yaml -p dolma-$i &> logs/dolma-$i.txt &
# done

# Testing
# for i in $(seq 1 2); do
#     python3.11 ./cli.py fuzz -s x86/isa_spec/base.json -t $RVZR_DIR/src/tests/spectre_v1.asm --DOLMA DOLMA_Conservative_M --ipc-show-output --debug --verbose -i 7 -n 10 -c ../docker/docker_dolma/yamls/docker_gem5_v1_final_cache_tlb.yaml -p dolma-$i &> logs/dolma-$i.txt &
# done

####################################################################################################

# Benchmark run
# ./benchmark_all.sh DOLMA 200 70 50

# Testing
# ./benchmark_all.sh DOLMA 7 10 20
# ./benchmark_all.sh DOLMA 2 3 5

####################################################################################################

# for i in $(seq 1 50); do
#     python3.11 ./cli.py fuzz -s x86/isa_spec/base.json --DOLMA DOLMA_Conservative_M -i 70 -n 1000 -c ../docker/docker_dolma/yamls/docker_gem5_v1_final_cache_tlb.yaml -p dolma-$i &> logs/dolma-$i.txt &
# done

# for i in $(seq 1 50); do
#     python3.11 ./cli.py fuzz -s x86/isa_spec/base.json --DOLMA Baseline -i 70 -n 1000 -c ../docker/docker_dolma/yamls/docker_gem5_v1_final_cache_tlb.yaml -p dolma-$i &> logs/dolma-$i.txt &
# done

# cd $RVZR_DIR/src && ls | grep results

# python3.11 -m pip install ipython && cd /code/gem5-docker/attacks
# python3.11 ./main.py --target control_mem_btb_branch --mode=0
# python3.11 ./main.py --target control_mem_btb_branch --mode=4 --stt


# gcc hello.c --static
# ../build/X86_MESI_Two_Level/gem5.opt --debug-start=0 se_run_experiment.py --mem-type SimpleMemory --cmd bin/a.out --cpu-type DerivO3CPU --cpu-clock 2GHz --sys-clock 2GHz --l1d_size 32kB --l1d_assoc 8 --l1i_size 32kB --l1d_assoc 8 --l2_size 2MB --l2_assoc 16 --l2cache --caches --mode 0
# ../build/X86_MESI_Two_Level/gem5.opt --debug-start=0 se_run_experiment.py --mem-type SimpleMemory --cmd bin/control_mem_btb_branch --cpu-type DerivO3CPU --cpu-clock 2GHz --sys-clock 2GHz --l1d_size 32kB --l1d_assoc 8 --l1i_size 32kB --l1d_assoc 8 --l2_size 2MB --l2_assoc 16 --l2cache --caches --mode 4 --stt True

# /code/gem5-docker/build/X86_MESI_Two_Level/gem5.opt --debug-flags=RevizorIPC,Fetch,DumpTLBWithCaches --debug-file=log.out --outdir=logs-dolma-1 /code/gem5-docker/configs/revizor/ipc.py --cpu-type=DerivO3CPU --l1i_size=8kB --l2cache --num-cpu=1 --mode=0 --rel-max-tick=1000000000 --checkpoint-dir=/code/gem5-docker/checkpointdolma-1 --l1traces --dump-stats --socket revizor-gem5-dolma-1-0-1728312387.074029922 --l1d_assoc=8 --l1d_size=32kB --L1_TBEs=256 --L2_TBEs=256 --DC_TBEs=256 --DTB_entries=64

# assert False, "HERE"
# fatal("HERE");

# run violation analysis script on the violation:
#   python3.11 analyse_ipc_violation.py results/Xhrs-Ymins-Zsecs/ --args '-s x86/isa_spec/base.json --DOLMA DOLMA_Conservative_M -i 10 -n 1 -c ../docker/docker_dolma/docker_gem5_v1_final_cache_tlb.yaml'
# this should give you the instruction which caused the violation
