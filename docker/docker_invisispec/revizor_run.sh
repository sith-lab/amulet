#!/bin/bash

# Best called with: "/code/revizor_run.sh &> /code/revizor-docker/revizor_run.out;"
# Remove --debug flags to increase speed!
# Make sure runs are not fighting for cores for accurate time measurement;
# Final Cache is ~15% faster; Allocate 100 cores for memory trace, 115 cores for final cache runs
# Final cache has same yaml for both IS and USBL

echo "Running fuzzer";
export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export GEM5_DIR=$CODE_DIR/gem5-docker;
# export MINIMIZE_DIR=$RVZR_DIR/src/tests/minimize;
# export FUZZFOUND_DIR=$RVZR_DIR/src/tests/fuzzfound;
# export FINAL_CACHE_YAML_PATH=$CODE_DIR/docker_gem5_v1_final_cache.yaml; # Curr: ct-seq
# export FINAL_CACHE_ALT_YAML_PATH=$CODE_DIR/docker_gem5_v1_final_cache_alt.yaml; # Curr: ct-seq, NO_L1I
export YAML=$RVZR_DIR/docker/docker_invisispec/docker_gem5_v1_final_cache_and_tlb.yaml
cd $RVZR_DIR/src;


# Example usages of Revizor with IPC orchestration
for i in $(seq 1 100); do
    python3.11 ./cli.py fuzz -s x86/isa_spec/base.json --nonstop --ruby --InvisiSpec --InvisiSpec_Futuristic -i 70 -n 200 -c $YAML -p invisispec-$i &> logs/invisispec-$i.txt &
done

####################################################################################################

# Benchmark run
# ./benchmark_all.sh InvisiSpec 200 70 50

# Testing
# ./benchmark_all.sh InvisiSpec 7 10 20
# ./benchmark_all.sh InvisiSpec 2 3 5

####################################################################################################


# Memory Trace
# export USBL_TT_CTCONDBPAS_YAML=${MEMORY_TRACE_YAML_PATH};
# export IS_TT_CTCONDBPAS_YAML=${MEMORY_TRACE_ALT_YAML_PATH};
# export IS_OT_ARCHSEQ_YAML=${MEMORY_TRACE_ALT_YAML_PATH};


# Final Cache
# export ST_CTSEQ_YAML=${FINAL_CACHE_YAML_PATH};
# export ST_CTSEQ_NOL1I_YAML=${FINAL_CACHE_ALT_YAML_PATH};
# export ST_CTCOND_YAML=${FINAL_CACHE_ALT_YAML_PATH};


# First minimize w/ optional_run (to get test_case_min.asm), then fuzz the found minimized asm
# echo "Minimization Testing";
# TEST=USBL-ST-256MSHR-CT_SEQ-Min;
# ASM=$MINIMIZE_DIR/$TEST/test_case_min.asm;
# BATCHTESTS=$MINIMIZE_DIR/$TEST/batch;
# YAML=${ST_CTSEQ_YAML};
# mkdir -p $BATCHTESTS;
# for i in {0..99..1} 
# do 
#   echo "Minimized $TEST run $i launched";
#   cp -v $ASM $BATCHTESTS/test_case_$i.asm;
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -t $BATCHTESTS/test_case_$i.asm --ruby --InvisiSpec --InvisiSpec_UnsafeBaseline -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done

# TEST=USBL-ST-256MSHR-CT_COND-Min;
# ASM=$MINIMIZE_DIR/$TEST/test_case_min.asm;
# BATCHTESTS=$MINIMIZE_DIR/$TEST/batch;
# YAML=${ST_CTCOND_YAML};
# mkdir -p $BATCHTESTS;
# for i in {0..99..1} 
# do 
#   echo "Minimized $TEST run $i launched";
#   cp -v $ASM $BATCHTESTS/test_case_$i.asm;
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -t $BATCHTESTS/test_case_$i.asm --ruby --InvisiSpec --InvisiSpec_UnsafeBaseline -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done


# echo "Fuzz testing";

# fuzz InvisiSpec FuturisticSpec with CT-SEQ:
# python3.11 ./cli.py fuzz -s x86/isa_spec/base.json --ruby --InvisiSpec --InvisiSpec_FuturisticSpec -i 10 -n 1000 -c ../docker/docker_invisispec/docker_gem5_v1_final_cache_ipcFP.yaml

# # InvisiSpec
# TEST=IS-ST-2MSHR-CT_SEQ-NO_L1I-Futuristic;
# YAML=${ST_CTSEQ_NOL1I_YAML};
# for i in {0..99..1}
# do
#   echo "$TEST run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -n 200 --ruby --InvisiSpec --InvisiSpec_FuturisticSpec -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done

# TEST=IS-ST-2MSHR-CT_SEQ-Futuristic;
# YAML=${ST_CTSEQ_YAML};
# for i in {0..99..1}
# do
#   echo "$TEST run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -n 200 --ruby --InvisiSpec --InvisiSpec_FuturisticSpec -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done

# TEST=IS-ST-256MSHR-CT_SEQ-NO_L1I;
# YAML=${ST_CTSEQ_NOL1I_YAML};
# for i in {0..99..1}
# do
#   echo "$TEST run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -n 200 --ruby --InvisiSpec -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done

# TEST=IS-ST-256MSHR-CT_SEQ;
# YAML=${ST_CTSEQ_YAML};
# for i in {0..99..1}
# do
#   echo "$TEST run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -n 200 --ruby --InvisiSpec -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done

# TEST=IS-ST-256MSHR-CT_COND;
# YAML=${ST_CTCOND_YAML};
# for i in {0..99..1}
# do
#   echo "$TEST run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -n 200 --ruby --InvisiSpec -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done

# TEST=IS-OT-256MSHR-ARCH_SEQ;
# YAML=${IS_OT_ARCHSEQ_YAML};
# for i in {0..99..1}
# do
#   echo "$TEST run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -n 200 --ruby --InvisiSpec -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done

######

# Baseline CPU
# for i in {0..99..1}
# do
#   echo "UnsafeBaseline Ordering CT-Cond-BPAS run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $UNSAFEBASELINE_CTCONDBPAS_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 200 --ruby --InvisiSpec --InvisiSpec_UnsafeBaseline -p fuzzing_run_baseline_ctcondbpas_core$i &> $RVZR_DIR/fuzz_output_baseline_ctcondbpas_core$i.out &
# done

# for i in {0..99..1} 
# do # -n 400
#   echo "UnsafeBaseline Final Cache CT-Cond-BPAS run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $CTCONDBPAS_FINALCACHE_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 400 --ruby --InvisiSpec --InvisiSpec_UnsafeBaseline -p fuzzing_run_baseline_ctcondbpas_finalcache_core$i &> $RVZR_DIR/fuzz_output_baseline_ctcondbpas_finalcache_core$i.out &
# done

# for i in {0..99..1}
# do
#   echo "UnsafeBaseline Final Cache CT-Seq run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $CT_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 200 --ruby --InvisiSpec --InvisiSpec_UnsafeBaseline -p fuzzing_run_baseline_ctseq_core$i &> $RVZR_DIR/fuzz_output_baseline_ctseq_core$i.out &
# done

# for i in {0..114..1}
# do
#   echo "UnsafeBaseline Final Cache CT-Cond run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $CT_COND_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 200 --ruby --InvisiSpec --InvisiSpec_UnsafeBaseline -p fuzzing_run_baseline_ctcond_core$i &> $RVZR_DIR/fuzz_output_baseline_ctcond_core$i.out &
# done


# echo "Testing found violation asms";

# Reference test
# ASM=$RVZR_DIR/src/tests/spectre_v1.asm;
# YAML=${ST_CTSEQ_YAML};
# python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -t $ASM --ruby --debug --InvisiSpec --InvisiSpec_UnsafeBaseline -p spectre_v1 &> $RVZR_DIR/spectre_v1.out;

# TEST=IS-ST-256MSHR-CT_SEQ-Found;
# ASM=$FUZZFOUND_DIR/$TEST/test_case_revizor.asm;
# BATCHTESTS=$FUZZFOUND_DIR/$TEST/batch;
# YAML=${ST_CTSEQ_YAML};
# mkdir -p $BATCHTESTS;
# for i in {0..99..1} 
# do 
#   echo "$TEST run $i launched";
#   cp -v $ASM $BATCHTESTS/test_case_$i.asm;
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 360 -t $BATCHTESTS/test_case_$i.asm --ruby --InvisiSpec -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done


# echo "Done running fuzzer";
# echo "Warning: Do not run script again whilst in same container!";
