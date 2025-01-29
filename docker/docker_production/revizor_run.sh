#!/bin/bash

# Best called with: "/code/revizor_run.sh &> /code/revizor-docker/revizor_run.out;"

echo "Running fuzzer";
export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export GEM5_DIR=$CODE_DIR/gem5-docker;

export YAML_PATH=$CODE_DIR/docker_gem5_v1.yaml;

cd $RVZR_DIR/src;

# Test known violation asm
nohup ./cli.py fuzz -c $YAML_PATH -s x86/isa_spec/base.json -n 100 -i 10 --ruby -t tests/spectre_v1.asm -p spectre_v1 &> $RVZR_DIR/spectre_v1_output.out &

# Fuzz
# nohup ./cli.py fuzz -s x86/isa_spec/base.json -i 60 -n 200 -c $YAML_PATH --ruby -p fuzzing_run_56737 --input-seed 56737 &> $RVZR_DIR/fuzz_output_56737.out &
# nohup ./cli.py fuzz -s x86/isa_spec/base.json -i 60 -n 200 -c $YAML_PATH --ruby -p fuzzing_run_10 --input-seed 10 &> $RVZR_DIR/fuzz_output_10.out &
# nohup ./cli.py fuzz -s x86/isa_spec/base.json -i 60 -n 200 -c $YAML_PATH --ruby -p fuzzing_run_17 --input-seed 17 &> $RVZR_DIR/fuzz_output_17.out &
# nohup ./cli.py fuzz -s x86/isa_spec/base.json -i 60 -n 200 -c $YAML_PATH --ruby -p fuzzing_run_98546 --input-seed 98546 &> $RVZR_DIR/fuzz_output_98546.out &

echo "Done running fuzzer";
echo "Warning: Do not run script again whilst in same container!";

# Test to confirm; Change as needed!
VIOLATION_ASM=$RVZR_DIR/example_outputs/gem5restore_vio/violation-230601-035422.asm;
INPUT_SEED=98546;
# nohup ./cli.py fuzz -c $YAML_PATH -s x86/isa_spec/base.json -i 60 -n 200 --ruby --InvisiSpec -p _target_asm_run -t $VIOLATION_ASM --input-seed=$INPUT_SEED &> $RVZR_DIR/target_asm_output.out;
