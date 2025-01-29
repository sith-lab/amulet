#!/bin/bash

# Best called with: "/code/revizor_run.sh &> /code/revizor-docker/revizor_run.out;"
# Remove --debug flags to increase speed!

echo "Running fuzzer";
export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export GEM5_DIR=$CODE_DIR/gem5-docker;
# export MEMORY_TRACE_YAML_PATH=$CODE_DIR/docker_gem5_v1_memory_trace.yaml; # Curr: arch-seq
# export MEMORY_TRACE_ALT_YAML_PATH=$CODE_DIR/docker_gem5_v1_memory_trace_alt.yaml; # Curr: ct-seq
export FINAL_CACHE_YAML_PATH=$CODE_DIR/docker_gem5_v1_final_cache.yaml;
cd $RVZR_DIR/src;

# echo "Testing known violation asms"
# python3.11 ./cli.py fuzz --debug -c $MEMORY_TRACE_ALT_YAML_PATH -s x86/isa_spec/base.json -i 10 -n 100 -t tests/spectre_v1.asm --ruby --InvisiSpec -p spectre_v1_mem &> $RVZR_DIR/spectre_v1_mem_output.out;
# python3.11 ./cli.py fuzz --debug -c $FINAL_CACHE_YAML_PATH -s x86/isa_spec/base.json -i 10 -n 100 -t tests/spectre_v1.asm --ruby --InvisiSpec -p spectre_v1_final &> $RVZR_DIR/spectre_v1_final_output.out;

# Test cases of interest: spectre_v1.asm, interference.asm, Invisispecbug.asm
# echo "MSHR interference testing"
# nohup python3.11 ./cli.py fuzz --debug -c $MEMORY_TRACE_YAML_PATH -s x86/isa_spec/base.json -i 50 -n 1 -t tests/interference.asm --ruby --InvisiSpec -p interference_mem_archseq &> $RVZR_DIR/interference_output_archseq.out &
# nohup python3.11 ./cli.py fuzz --debug -c $MEMORY_TRACE_ALT_YAML_PATH -s x86/isa_spec/base.json -i 50 -n 1 -t tests/interference.asm --ruby --InvisiSpec -p interference_mem_ctseq &> $RVZR_DIR/interference_output_ctseq.out &

echo "Fuzz testing"
export ARCH_SEQ_YAML_PATH=${FINAL_CACHE_YAML_PATH};
export CT_SEQ_YAML_PATH=${FINAL_CACHE_YAML_PATH};

# nohup python3.11 ./cli.py fuzz --debug -c $ARCH_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 10 -n 100 --ruby --InvisiSpec -p fuzzing_run_archseq_test &> $RVZR_DIR/fuzz_output_archseq_test.out &
# nohup python3.11 ./cli.py fuzz --debug -c $CT_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 10 -n 100 --ruby --InvisiSpec -p fuzzing_run_ctseq_test &> $RVZR_DIR/fuzz_output_ctseq_test.out &

# for i in {0..255..1}
# do
#   echo "Arch-Seq run $i launched"
#   nohup python3.11 ./cli.py fuzz --debug -c $ARCH_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 200 --ruby --InvisiSpec -p fuzzing_run_archseq_core$i &> $RVZR_DIR/fuzz_output_archseq_core$i.out &
# done

# for i in {0..127..1}
# do
#   echo "CT-Seq run $i launched"
#   nohup python3.11 ./cli.py fuzz --debug -c $CT_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 10 -n 100 --ruby --InvisiSpec -p fuzzing_run_ctseq_core$i &> $RVZR_DIR/fuzz_output_ctseq_core$i.out &
# done

# Test to confirm; Change as needed!
# Cannot test the same violation asm in more than 1 run simultaneously; Must serialize within a test asm!
echo "Testing found violation asms";

# echo "Testing ctseq_1";
# ctseq_1(){
#   python3.11 ./cli.py fuzz --debug -c $CT_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 1 -t tests/fuzzfound/ctseq_1.asm --ruby --InvisiSpec -p fuzzfound_ctseq1_ctseq &> $RVZR_DIR/fuzzfound_output_ctseq1_ctseq.out;
#   python3.11 ./cli.py fuzz --debug -c $ARCH_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 1 -t tests/fuzzfound/ctseq_1.asm --ruby --InvisiSpec -p fuzzfound_ctseq1_archseq &> $RVZR_DIR/fuzzfound_output_ctseq1_archseq.out;
# }
# export -f ctseq_1;
# bash -c ctseq_1 &

echo "Testing archseq_1";
archseq_1(){
  python3.11 ./cli.py fuzz --debug -c $ARCH_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 1 -t tests/fuzzfound/archseq_1.asm --ruby --InvisiSpec -p fuzzfound_archseq1_archseq &> $RVZR_DIR/fuzzfound_output_archseq1_archseq.out;
  # python3.11 ./cli.py fuzz --debug -c $CT_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 1 -t tests/fuzzfound/archseq_1.asm --ruby --InvisiSpec -p fuzzfound_archseq1_ctseq &> $RVZR_DIR/fuzzfound_output_archseq1_ctseq.out;
}
export -f archseq_1;
bash -c archseq_1 &

# echo "Testing archseq_2";
# archseq_2(){
#   python3.11 ./cli.py fuzz --debug -c $ARCH_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 1 -t tests/fuzzfound/archseq_2.asm --ruby --InvisiSpec -p fuzzfound_archseq2_archseq &> $RVZR_DIR/fuzzfound_output_archseq2_archseq.out;
#   # python3.11 ./cli.py fuzz --debug -c $CT_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 1 -t tests/fuzzfound/archseq_2.asm --ruby --InvisiSpec -p fuzzfound_archseq2_ctseq &> $RVZR_DIR/fuzzfound_output_archseq2_ctseq.out;
# }
# export -f archseq_2;
# bash -c archseq_2 &

echo "Done running fuzzer";
echo "Warning: Do not run script again whilst in same container!";
