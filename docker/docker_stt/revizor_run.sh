#!/bin/bash

# Best called with: $RVZR_RUN &> $RVZR_DIR/revizor_run.out;
# Remove --debug flags to increase speed!
# Make sure runs are not fighting for cores for accurate time measurement;

export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export DOCKER_DIR=$RVZR_DIR/docker/docker_stt; # Contains yamls!
export GEM5_DIR=$CODE_DIR/gem5-docker;
export FUZZFOUND_DIR=$RVZR_DIR/src/tests/fuzzfound;
export MINIMIZE_DIR=$RVZR_DIR/src/tests/minimize;
export DBG_DIR=$CODE_DIR/dbg;
export RESULTS_DIR=$RVZR_DIR/src/results;

export ST_ARCHSEQ_YAML=$DOCKER_DIR/docker_gem5_v1_final_cache_tlb.yaml;
export YAML=$ST_ARCHSEQ_YAML;

# Kill all previous runs
# kill $(pidof python3.11)

# Compile: 
# rm -rf $GEM5_DIR/build;
# cd /code/gem5-docker && python3 `which scons` -j$(nproc) build/X86/gem5.opt --default=X86 --ignore-style --debug=explain 
# CXXFLAGS="-g"

cd $RVZR_DIR/src;
mkdir -p logs;

# Example usages of Revizor with IPC orchestration
for i in $(seq 1 100); do
    python3.11 ./cli.py fuzz -s x86/isa_spec/base.json --nonstop --ruby --STT --STT_FuturisticSpec -i 70 -n 200 -c $YAML -p stt-$i &> logs/stt-$i.txt &
    echo "Launched stt-$i - Check $RVZR_DIR/src/logs/stt-$i.txt for results";
done

# Testing
# for i in $(seq 1 2); do
#     python3.11 ./cli.py fuzz -s x86/isa_spec/base.json --ruby --STT --STT_FuturisticSpec --ipc-show-output --debug --verbose -i 7 -n 10 -c $YAML -t $RVZR_DIR/src/tests/dolma_spec_store.asm -p stt-$i &> logs/stt-$i.txt &
# done


####################################################################################################

# Benchmark run
# ./benchmark_all.sh STT 200 70 100

# Testing
# ./benchmark_all.sh STT 7 10 20
# ./benchmark_all.sh STT 2 3 5

####################################################################################################

# First minimize w/ optional_run (to get test_case_min.asm), then fuzz the found minimized asm
# echo "Minimization Testing";
# TEST=USBL-ST-ARCH_SEQ-Min;
# ASM=$MINIMIZE_DIR/$TEST/test_case_min.asm;
# BATCHTESTS=$MINIMIZE_DIR/$TEST/batch;
# YAML=${ST_ARCHSEQ_YAML};
# mkdir -p $BATCHTESTS;
# for i in {0..49..1} 
# do 
#   echo "Minimized $TEST run $i launched";
#   cp -v $ASM $BATCHTESTS/test_case_$i.asm;
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -t $BATCHTESTS/test_case_$i.asm --ruby --STT --STT_UnsafeBaseline -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done

# echo "Fuzz testing";

# TEST=STT-ST-IPC-ARCHSEQ;
# YAML=${ST_ARCHSEQ_YAML};
# for i in {0..99..1}
# do
#   echo "$TEST run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -n 200 --ruby --STT --STT_FuturisticSpec -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done

# TEST=STT-ST-SIMPLE-ARCHSEQ;
# YAML=${ST_ARCHSEQ_SIMPLE_YAML};
# for i in {0..99..1}
# do
#   echo "$TEST run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -n 200 --ruby --STT --STT_FuturisticSpec -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done

# TEST=STT-ST-SIMPLE-CTSEQ;
# YAML=${ST_CTSEQ_SIMPLE_YAML};
# for i in {0..99..1}
# do
#   echo "$TEST run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -n 200 --ruby --STT --STT_FuturisticSpec -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done

######

# Baseline CPU
# TEST=USBL-ST-ARCHSEQ;
# YAML=${ST_ARCHSEQ_YAML};
# for i in {0..99..1}
# do
#   echo "$TEST run $i launched"
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -n 200 --ruby --STT --STT_UnsafeBaseline -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done

# echo "Testing found violation asms";
# General debug flags: "Squashed,ROB,LSQ,LSQUnit,MemDepUnit,Branch,Fetch,IQ,TLB,Commit"
# GEM5_DEBUG_FLAGS="Exec"

# Reference tests
# Spectre v1
# ASM=$RVZR_DIR/src/tests/spectre_v1.asm;
# YAML=${ST_CTSEQ_YAML};
# nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 70 -t $ASM --ruby --debug --debug-flags=$GEM5_DEBUG_FLAGS --verbose --STT --STT_UnsafeBaseline --verbose -p spectre_v1 &> $RVZR_DIR/spectre_v1.out &

# Check using --verbose!
# echo "Batch test - Existing violation test program";
# TEST=dolma_spec_store;
# ASM=$RVZR_DIR/src/tests/dolma_spec_store.asm;
# BATCHTESTS=$FUZZFOUND_DIR/$TEST/batch;
# YAML=${ST_ARCHSEQ_SIMPLE_YAML};
# mkdir -p $BATCHTESTS;
# for i in {0..24..1} # Default: 99
# do 
#   echo "$TEST run $i launched";
#   cp -v $ASM $BATCHTESTS/test_case_$i.asm;
#   DEFENSE=STT_FuturisticSpec;
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -i 360 -t $BATCHTESTS/test_case_$i.asm --ruby --debug --debug-flags=$GEM5_DEBUG_FLAGS --STT --$DEFENSE -p ${TEST}_core$i &> $RVZR_DIR/${TEST}_core$i.out &
# done

# echo "Single test - Existing violation test program, Existing violation test input";
# TEST_CLASS="0hrs-36mins-12secs-reruns"; # Folder under violation_results/
# TESTS=("0hrs-15mins-10secs_simple");
# for TEST in "${TESTS[@]}"; do
#   TEST_NAME=${TEST}_a
#   ASM=$GEM5_DIR/violation_results/$TEST_CLASS/$TEST/test_case_rvzr_input1.asm;
#   INPUTCASE=$GEM5_DIR/violation_results/$TEST_CLASS/$TEST/inputpickle_input1.pkl;
#   YAML=${ST_ARCHSEQ_SIMPLE_YAML};
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -ic $INPUTCASE -t $ASM --ruby --debug --debug-flags=$GEM5_DEBUG_FLAGS --verbose --STT --STT_FuturisticSpec -p ${TEST_NAME} &> $RVZR_DIR/${TEST_NAME}.out &

#   TEST_NAME=${TEST}_b
#   ASM=$GEM5_DIR/violation_results/$TEST_CLASS/$TEST/test_case_rvzr_input2.asm;
#   INPUTCASE=$GEM5_DIR/violation_results/$TEST_CLASS/$TEST/inputpickle_input2.pkl;
#   YAML=${ST_ARCHSEQ_SIMPLE_YAML};
#   nohup python3.11 ./cli.py fuzz -c $YAML -s x86/isa_spec/base.json -ic $INPUTCASE -t $ASM --ruby --debug --debug-flags=$GEM5_DEBUG_FLAGS --verbose --STT --STT_FuturisticSpec -p ${TEST_NAME} &> $RVZR_DIR/${TEST_NAME}.out &
# done

# echo "Done running fuzzer";
# echo "Warning: Do not run script again whilst in same container!";
