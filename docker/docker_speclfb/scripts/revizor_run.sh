#!/bin/bash
export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export GEM5_DIR=$CODE_DIR/gem5-docker;
export DBG_DIR=$CODE_DIR/dbg;
export RESULTS_DIR=$RVZR_DIR/src/results;

# Kill all previous runs
# kill $(pidof python3)

# Compile: 
# rm -rf $GEM5_DIR/build;
# cd /code/gem5-docker && python3 `which scons` -j$(nproc) build/X86/gem5.opt --default=X86 --ignore-style --debug=explain 
# CXXFLAGS="-g"

YAML=$RVZR_DIR/docker/docker_speclfb/yamls/docker_gem5_v1_final_cache_tlb.yaml;

cd $RVZR_DIR/src;
mkdir -p logs;
# Example usages of Revizor with IPC orchestration
for i in $(seq 1 100); do
    python3 ./cli.py fuzz -s x86/isa_spec/base.json --nonstop --SpecLFB -i 70 -n 200 -c $YAML -p speclfb-$i &> logs/speclfb-$i.txt &
    echo "Launched speclfb-$i - Check $RVZR_DIR/src/logs/speclfb-$i.txt for results";
done

# Testing
# for i in $(seq 1 2); do
#     python3 ./cli.py fuzz -s x86/isa_spec/base.json --SpecLFB --ipc-show-output --debug --verbose -i 7 -n 10 -c ../docker/docker_speclfb/yamls/ct-seq.yaml -t $RVZR_DIR/src/tests/spectre_v1.asm -p speclfb-$i &> logs/speclfb-$i.txt &
# done

####################################################################################################

# Benchmark run
# ./benchmark_all.sh SpecLFB 200 70 50

# Testing
# ./benchmark_all.sh SpecLFB 7 10 20
# ./benchmark_all.sh SpecLFB 2 3 5

####################################################################################################

# cd $GEM5_DIR
# make x86-64
# make s1x86
# make s4x86
# make debugv1
# --ipc-show-output --debug --verbose
# $RVZR_RUN &> compile.txt

# Run violation analysis script
# violation=$RESULTS_DIR/0hrs-00mins-30secs;
# cd $RVZR_DIR/src;
# echo "Analyzing $violation";
# python3 analyse_ipc_violation.py "$violation" --no-color --use-yaml-debug-flags --process-run "$(basename "$violation")" \
# --args "-s x86/isa_spec/base.json --SpecLFB -i 10 -n 1 -c $YAML" &> "$violation"/analysis.txt;
# python3 analyse_ipc_violation.py "$violation" --only-analyze &> "$violation"/analysis_color.txt;
# echo "Analysis of IPC violation complete. Check ~/code/revizor-staging/docker/docker_speclfb/revizor-docker/src/results/$(basename "$violation")/analysis.txt for results.";

# Check output .txt for model_debug
# Still need to set 'gem5_ipc_parallelism: 1' to get results from non-analysis single run
# python3 ./cli.py fuzz -s x86/isa_spec/base.json --SpecLFB --ipc-show-output --debug --verbose -ic $violation/inputpickle_primer.pkl -c $YAML -t $violation/test_case_rvzr_input1.asm -p test-1 &> logs/test-1.txt;
# python3 ./cli.py fuzz -s x86/isa_spec/base.json --SpecLFB --ipc-show-output --debug --verbose -ic $violation/inputpickle_reference.pkl -c $YAML -t $violation/test_case_rvzr_input1.asm -p test-2 &> logs/test-2.txt;
# echo "Done test runs for $violation, check logs/test-1.txt and logs/test-2.txt for results.";
# echo "Check last tags in $RVZR_DIR/src/debug-test-1/one and $RVZR_DIR/src/debug-test-2/one for cache tags"; 

# Run violation analysis script on all violations in results
# for violation in "$RESULTS_DIR"/*; do
#     (
#         echo "Analyzing $violation";
#         python3 analyse_ipc_violation.py "$violation" --no-color --use-yaml-debug-flags --process-run "$(basename "$violation")" \
#         --args "-s x86/isa_spec/base.json --SpecLFB -i 10 -n 1 -c $YAML" &> "$violation"/analysis.txt;
#         python3 analyse_ipc_violation.py "$violation" --only-analyze &> "$violation"/analysis_color.txt;
#         echo "Analysis of IPC violation complete. Check ~/code/revizor-staging/docker/docker_speclfb/revizor-docker/src/results/$(basename "$violation")/analysis.txt for results.";
#     ) &
# done
# rm -rf vio_check.txt;
# for violation in "$RESULTS_DIR"/*; do
#     python3 non_spec_vio_checker.py "$violation" &>> vio_check.txt;
#     # echo "Done checking $violation";
# done
# echo "Check ~/code/revizor-staging/docker/docker_speclfb/revizor-docker/src/vio_check.txt for results";

# Wait for all background jobs to finish
# wait;