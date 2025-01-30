#!/bin/sh

# Directories
CODE_DIR="/code"
RVZR_DIR="$CODE_DIR/revizor-docker"
DOCKER_DIR="$RVZR_DIR/docker"

# Usage check
if [ -z "$1" ]; then
    echo "Usage: $0 <defense> [cases] [inputs]"
    exit 1
fi

# Arguments
DEFENSE="$1"             # Required: Defense under test
CASES="${2:-200}"        # Optional: number of test cases - Default: 200
INPUTS="${3:-140}"       # Optional: number of inputs per test case - Default: 140
ROUNDS=1              # How many runs to have in parallel - Default: 100

# Configuration sets
CONFIGS_INVISISPEC_BASELINE="$DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache_ipcFP.yaml,\
$DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache.yaml,\
$DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache_ipc_ct_cond.yaml,\
$DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache_ct_cond.yaml"

CONFIGS_INVISISPEC="$DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache_ipcFP.yaml,\
$DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache.yaml"

CONFIGS_CLEANUPSPEC="$DOCKER_DIR/docker_cleanupspec/docker_gem5_v1_final_cache_ipc.yaml"

CONFIGS_STT="$DOCKER_DIR/docker_stt_ipc/docker_gem5_v1_final_cache_tlb.yaml"
CONFIGS_STT_BASELINE="$DOCKER_DIR/docker_stt_ipc/docker_gem5_v1_final_cache_tlb.yaml"

CONFIGS_SPECLFB="$DOCKER_DIR/docker_speclfb/yamls/docker_gem5_v1_final_cache_tlb.yaml"
CONFIGS_SPECLFB_BASELINE="$DOCKER_DIR/docker_speclfb/yamls/docker_gem5_v1_final_cache_tlb.yaml"

# Pick args/confs based on the provided defense
case "$DEFENSE" in
  InvisiSpec_Baseline)
    args="--ruby,--InvisiSpec,--InvisiSpec_UnsafeBaseline"
    confs="$CONFIGS_INVISISPEC_BASELINE"
    ;;
  InvisiSpec)
    args="--ruby,--InvisiSpec,--InvisiSpec_Futuristic"
    confs="$CONFIGS_INVISISPEC"
    ;;
  CleanupSpec)
    args="--ruby,--CleanupSpec"
    confs="$CONFIGS_CLEANUPSPEC"
    ;;
  STT)
    args="--ruby,--STT,--STT_Futuristic"
    confs="$CONFIGS_STT"
    ;;
  STT_Baseline)
    args="--ruby,--STT,--STT_UnsafeBaseline"
    confs="$CONFIGS_STT_BASELINE"
    ;;
  SpecLFB)
    args="--SpecLFB"
    confs="$CONFIGS_SPECLFB"
    ;;
  SpecLFB_Baseline)
    args="--SpecLFB,--SpecLFB_UnsafeBaseline"
    confs="$CONFIGS_SPECLFB_BASELINE"
    ;;
  *)
    echo "Error: Invalid defense '$DEFENSE'"
    exit 1
    ;;
esac

# Double-check configuration
if [ -z "$confs" ]; then
    echo "Skipping execution: No configuration set for $DEFENSE."
    exit 0
fi

# Prepare logs directory
mkdir -p logs

# Run benchmark
echo "Running benchmark for $DEFENSE with $CASES cases, $INPUTS inputs per case..."
./benchmark.py --verbose \
               -i "$INPUTS" \
               -n "$CASES" \
               -r "$ROUNDS" \
               -c "$confs" \
               --extra-args="$args" \
               -p "$DEFENSE" \
               -o "benchmark-out-$DEFENSE" \
               > /dev/null; 
              #  > "logs/bench-$DEFENSE.txt" 2>&1

echo "Benchmark completed. Logs saved to $RVZR_DIR/src/benchmark-out-$DEFENSE/info.txt"
