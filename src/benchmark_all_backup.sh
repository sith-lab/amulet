#!/bin/sh
export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export DOCKER_DIR=$RVZR_DIR/docker;

# Number of test cases - Default: 200
CASES="${1:-200}"
# Number of inputs per test case - Default: 140
INPUTS=140
# Number of times to run each configuration - Default: 5
PARALLEL_INSTANCES=5

CONFIGS_BASELINE=
# $DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache_ipcFP.yaml,\
# $DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache.yaml,\
# $DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache_ipc_ct_cond.yaml,\
# $DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache_ct_cond.yaml
CONFIGS_FUTURISTIC=
# $DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache_ipcFP.yaml,\
# $DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache.yaml

CONFIGS_CLEANUPSPEC=
# $DOCKER_DIR/docker_cleanupspec/docker_gem5_v1_final_cache_ipc.yaml

CONFIGS_STT=$DOCKER_DIR/docker_stt/docker_gem5_v1_final_cache_tlb.yaml;
CONFIGS_STT_BASELINE=$DOCKER_DIR/docker_stt/docker_gem5_v1_final_cache_tlb.yaml;

CONFIGS_SPECLFB=
# $DOCKER_DIR/docker_speclfb/yamls/docker_gem5_v1_final_cache_tlb.yaml;
CONFIGS_SPECLFB_BASELINE=
# $DOCKER_DIR/docker_speclfb/yamls/docker_gem5_v1_final_cache_tlb.yaml;


mkdir -p logs
for spec in Baseline Futuristic CleanupSpec STT STT_Baseline4 SpecLFB SpecLFB_Baseline; do
    if [ "$spec" = 'Baseline' ]; then
        args='--ruby,--InvisiSpec,--InvisiSpec_UnsafeBaseline'
        confs=$CONFIGS_BASELINE
    elif [ "$spec" = 'Futuristic' ]; then
        args='--ruby,--InvisiSpec,--InvisiSpec_Futuristic'
        confs=$CONFIGS_FUTURISTIC
    elif [ "$spec" = 'CleanupSpec' ]; then
        args='--ruby,--CleanupSpec'
        confs=$CONFIGS_CLEANUPSPEC
    elif [ "$spec" = 'STT' ]; then
        args='--ruby,--STT,--STT_Futuristic'
        confs=$CONFIGS_STT
    elif [ "$spec" = 'STT_Baseline4' ]; then
        args='--ruby,--STT,--STT_UnsafeBaseline'
        confs=$CONFIGS_STT_BASELINE
    elif [ "$spec" = 'SpecLFB' ]; then
        args='--SpecLFB'
        confs=$CONFIGS_SPECLFB
    elif [ "$spec" = 'SpecLFB_Baseline' ]; then
        args='--SpecLFB,--SpecLFB_UnsafeBaseline'
        confs=$CONFIGS_SPECLFB_BASELINE
    else
        echo "Bad spec: $spec"
        exit 1
    fi
    # Skip a config if it is not set
    if [ "$confs" = '' ]; then
        continue
    fi
    ./benchmark.py --verbose -i $INPUTS -n $CASES -r $PARALLEL_INSTANCES -c $confs --extra-args=$args -p $spec -o benchmark-out-$spec >logs/bench-$spec.txt 2>&1 &
done
