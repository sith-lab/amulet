#!/bin/bash
# Optional run commands; Run MANUALLY whilst in docker image!
# Check current state of yamls before running to be sure!

export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export GEM5_DIR=$CODE_DIR/gem5-docker;
export MINIMIZE_DIR=$RVZR_DIR/src/tests/minimize;
export FUZZFOUND_DIR=$RVZR_DIR/src/tests/fuzzfound;
# export MEMORY_TRACE_YAML_PATH=$CODE_DIR/docker_gem5_v1_memory_trace.yaml;
# export MEMORY_TRACE_ALT_YAML_PATH=$CODE_DIR/docker_gem5_v1_memory_trace_alt.yaml;
export FINAL_CACHE_YAML_PATH=$CODE_DIR/docker_gem5_v1_final_cache.yaml;
export FINAL_CACHE_ALT_YAML_PATH=$CODE_DIR/docker_gem5_v1_final_cache_alt.yaml;
cd $RVZR_DIR/src;

# Memory Trace
# export ARCH_SEQ_YAML_PATH=${MEMORY_TRACE_YAML_PATH};
# export ARCH_COND_YAML_PATH=${MEMORY_TRACE_ALT_YAML_PATH};
# export UNSAFEBASELINE_CTCONDBPAS_YAML_PATH=${MEMORY_TRACE_YAML_PATH};
# export INVISISPEC_CTCONDBPAS_YAML_PATH=${MEMORY_TRACE_ALT_YAML_PATH};

# Final Cache
export ST_CTSEQ_YAML=${FINAL_CACHE_YAML_PATH};
export ST_CTSEQ_NOL1I_YAML=${FINAL_CACHE_ALT_YAML_PATH};
# export ST_CTCONDBPAS_YAML=${FINAL_CACHE_YAML_PATH}; 
# export ST_CTCOND_YAML=${FINAL_CACHE_ALT_YAML_PATH};

echo "Minimize Runs"

TEST=IS-ST-256MSHR-CT_SEQ-Min; # InvisiSpec-StateTrace-256MSHRs-CT_SEQ
YAML=${ST_CTSEQ_YAML};
echo -e "$TEST\n"; # More initial tests (-n 600) on first iteration
python3.11 ./cli.py minimize -s x86/isa_spec/base.json -c $YAML -i $MINIMIZE_DIR/$TEST/test_case_revizor.asm -o $MINIMIZE_DIR/$TEST/test_case_min1.asm -n 1200 --ruby --InvisiSpec;
# python3.11 ./cli.py minimize -s x86/isa_spec/base.json -c $YAML -i $MINIMIZE_DIR/$TEST/test_case_min1.asm -o $MINIMIZE_DIR/$TEST/test_case_min2.asm -n 200 --ruby --InvisiSpec;
# python3.11 ./cli.py minimize -s x86/isa_spec/base.json -c $YAML -i $MINIMIZE_DIR/$TEST/test_case_min2.asm -o $MINIMIZE_DIR/$TEST/test_case_min3.asm -n 200 --ruby --InvisiSpec;
# mv test_case_min3.asm test_case_min.asm;

TEST=IS-ST-256MSHR-CT_SEQ-NO_L1I-Min;
YAML=${ST_CTSEQ_NOL1I_YAML};
echo -e "$TEST\n"; # More initial tests (-n 600) on first iteration
python3.11 ./cli.py minimize -s x86/isa_spec/base.json -c $YAML -i $MINIMIZE_DIR/$TEST/test_case_revizor.asm -o $MINIMIZE_DIR/$TEST/test_case_min1.asm -n 600 --ruby --InvisiSpec;
# python3.11 ./cli.py minimize -s x86/isa_spec/base.json -c $YAML -i $MINIMIZE_DIR/$TEST/test_case_min1.asm -o $MINIMIZE_DIR/$TEST/test_case_min2.asm -n 200 --ruby --InvisiSpec;
# python3.11 ./cli.py minimize -s x86/isa_spec/base.json -c $YAML -i $MINIMIZE_DIR/$TEST/test_case_min2.asm -o $MINIMIZE_DIR/$TEST/test_case_min3.asm -n 200 --ruby --InvisiSpec;
# mv test_case_min3.asm test_case_min.asm;

# TEST=USBL-ST-256MSHR-CT_COND-Min;
# YAML=${ST_CTCOND_YAML};
# echo -e "$TEST\n";
# python3.11 ./cli.py minimize -s x86/isa_spec/base.json -c $YAML -i $MINIMIZE_DIR/$TEST/test_case_revizor.asm -o $MINIMIZE_DIR/$TEST/test_case_min.asm -n 200 --ruby --InvisiSpec --InvisiSpec_UnsafeBaseline

# TEST=USBL-ST-256MSHR-CT_SEQ-Min;
# YAML=${ST_CTSEQ_YAML};
# echo -e "$TEST\n";
# python3.11 ./cli.py minimize -s x86/isa_spec/base.json -c $YAML -i $MINIMIZE_DIR/$TEST/test_case_revizor.asm -o $MINIMIZE_DIR/$TEST/test_case_min.asm -n 200 --ruby --InvisiSpec --InvisiSpec_UnsafeBaseline
