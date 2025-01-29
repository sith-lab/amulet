#!/bin/bash

# Best called with: "/code/revizor_run.sh &> /code/revizor-docker/revizor_run.out;"

echo "Running fuzzer";
export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export GEM5_DIR=$CODE_DIR/gem5-docker;
export YAML_PATH=$CODE_DIR/docker_gem5_v1.yaml;
export FINAL_CACHE_YAML_PATH=$CODE_DIR/revizor-docker/docker/docker_cleanupspec/docker_gem5_v1_final_cache.yaml; # Curr: arch-seq

export ARCH_SEQ_YAML_PATH=${FINAL_CACHE_YAML_PATH};
export CT_SEQ_YAML_PATH=${FINAL_CACHE_YAML_PATH};

cd $RVZR_DIR/src;

# Test known violation asm
nohup python3.11 ./cli.py fuzz --debug -c $YAML_PATH -s x86/isa_spec/base.json -n 100 -i 10 -t tests/spectre_v1.asm --ruby --CleanupSpec -p spectre_v1 &> $RVZR_DIR/spectre_v1_output.out &

# Fuzz
for i in {0..100..1}
do
  echo "Memory Trace Arch-Seq run $i launched"
  nohup python3.11 ./cli.py fuzz -c $ARCH_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 200 --ruby --CleanupSpec -p fuzzing_run_archseq_core$i &> $RVZR_DIR/fuzz_output_archseq_core$i.out &
done
for i in {0..120..1}
do
  echo "Final Cache Arch-Seq run $i launched"
  nohup python3.11 ./cli.py fuzz -c $FINAL_CACHE_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 200 --ruby --CleanupSpec -p fuzzing_run_finalcache_archseq_core$i &> $RVZR_DIR/fuzz_output_finalcache_archseq_core$i.out &
done
# In case things start to break
echo "Sanity testing";

# echo "Testing known violation asms"
# python3.11 ./cli.py fuzz --debug -c $FINAL_CACHE_YAML_PATH -s x86/isa_spec/base.json -i 10 -n 100 -t tests/spectre_v1.asm --ruby --CleanupSpec -p spectre_v1_final &> $RVZR_DIR/spectre_v1_final_output.out;
nohup python3.11 ./cli.py fuzz --debug -c $FINAL_CACHE_YAML_PATH -s x86/isa_spec/base.json -i 10 -n 100 -t tests/spectre_v1.asm --ruby --CleanupSpec -p spectre_v1_final &> $RVZR_DIR/spectre_v1_final_unsafebaseline_output.out &

# ARCH Seq
echo "Testing invisispec_archseq1";
invisispec_archseq1(){
  python3.11 ./cli.py fuzz --debug -c $ARCH_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 1 -t
  tests/fuzzfound/invisispec_archseq1.asm --ruby --CleanupSpec -p fuzzfound_archseq1_archseq &> $RVZR_DIR/fuzzfound_output_archseq1_archseq.out;
  # python3.11 ./cli.py fuzz --debug -c $CT_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 1 -t tests/fuzzfound/archseq_1.asm --ruby --CleanupSpec -p fuzzfound_archseq1_ctseq &> $RVZR_DIR/fuzzfound_output_archseq1_ctseq.out;
}
export -f invisispec_archseq1;
bash -c invisispec_archseq1 &

echo "Testing invisispec_archseq2";
invisispec_archseq2(){
  python3.11 ./cli.py fuzz --debug -c $ARCH_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 1 -t \
  tests/fuzzfound/invisispec_archseq2.asm --ruby --CleanupSpec -p fuzzfound_archseq2_archseq &> $RVZR_DIR/fuzzfound_output_archseq2_archseq.out;
  # python3.11 ./cli.py fuzz --debug -c $CT_SEQ_YAML_PATH -s x86/isa_spec/base.json -i 70 -n 1 -t tests/fuzzfound/archseq_2.asm --ruby --CleanupSpec -p fuzzfound_archseq2_ctseq &> $RVZR_DIR/fuzzfound_output_archseq2_ctseq.out;
}
export -f invisispec_archseq2;
bash -c invisispec_archseq2 &

echo "Done running fuzzer";
echo "Warning: Do not run script again whilst in same container!";

# Test to confirm; Change as needed!
VIOLATION_ASM=$RVZR_DIR/example_outputs/gem5restore_vio/violation-230601-035422.asm;
INPUT_SEED=98546;
# nohup python3.11 ./cli.py fuzz -c $YAML_PATH -s x86/isa_spec/base.json -i 60 -n 200 --ruby --CleanupSpec -p _target_asm_run -t $VIOLATION_ASM --input-seed=$INPUT_SEED &> $RVZR_DIR/target_asm_output.out;
