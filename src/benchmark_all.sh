#!/bin/sh

# Directories
CODE_DIR="/code"
RVZR_DIR="$CODE_DIR/revizor-docker"
DOCKER_DIR="$RVZR_DIR/docker"

# Usage check
if [ -z "$1" ]; then
    echo "Usage: $0 <defense> [cases] [inputs] [rounds]"
    exit 1
fi

# Arguments
DEFENSE="$1"             # Required: Defense under test
CASES="${2:-200}"        # Optional: Number of test cases - Default: 200
INPUTS="${3:-70}"       # Optional: Number of inputs per test case - Default: 70
ROUNDS="${4:-100}"       # Optional: Runs to have in parallel - Default: 100

# Configuration sets
CONF_INVISISPEC_BASELINE=$DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache_ipcFP.yaml;
# $DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache.yaml
# $DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache_ipc_ct_cond.yaml
# $DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache_ct_cond.yaml

CONF_INVISISPEC=$DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache_ipcFP.yaml;
# $DOCKER_DIR/docker_invisispec/docker_gem5_v1_final_cache.yaml

CONF_CLEANUPSPEC=$DOCKER_DIR/docker_cleanupspec/docker_gem5_v1_final_cache_ipc.yaml;

CONF_STT=$DOCKER_DIR/docker_stt/docker_gem5_v1_final_cache_tlb.yaml;
CONF_STT_BASELINE=$DOCKER_DIR/docker_stt/docker_gem5_v1_final_cache_tlb.yaml;

CONF_SPECLFB=$DOCKER_DIR/docker_speclfb/yamls/docker_gem5_v1_final_cache_tlb.yaml;
CONF_SPECLFB_BASELINE=$DOCKER_DIR/docker_speclfb/yamls/docker_gem5_v1_final_cache_tlb.yaml;

# Pick args/conf based on the provided defense
case "$DEFENSE" in
  InvisiSpec_Baseline)
    args="--ruby,--InvisiSpec,--InvisiSpec_UnsafeBaseline"
    conf="$CONF_INVISISPEC_BASELINE"
    ;;
  InvisiSpec)
    args="--ruby,--InvisiSpec,--InvisiSpec_Futuristic"
    conf="$CONF_INVISISPEC"
    ;;
  CleanupSpec)
    args="--ruby,--CleanupSpec"
    conf="$CONF_CLEANUPSPEC"
    ;;
  STT)
    args="--ruby,--STT,--STT_Futuristic"
    conf="$CONF_STT"
    ;;
  STT_Baseline)
    args="--ruby,--STT,--STT_UnsafeBaseline"
    conf="$CONF_STT_BASELINE"
    ;;
  SpecLFB)
    args="--SpecLFB"
    conf="$CONF_SPECLFB"
    ;;
  SpecLFB_Baseline)
    args="--SpecLFB,--SpecLFB_UnsafeBaseline"
    conf="$CONF_SPECLFB_BASELINE"
    ;;
  DOLMA)
    # args=""
    # conf=""
    echo "DOLMA is not yet implemented."
    # TODO add suitable yaml file, check working with './benchmark_all.sh DOLMA 2 3 5'
    exit 1;
    ;;
  *)
    echo "Error: Invalid defense '$DEFENSE'"
    exit 1
    ;;
esac

# Double-check configuration
if [ -z "$conf" ]; then
    echo "Skipping execution: No configuration set for $DEFENSE."
    exit 0
fi

# Prepare logs directory
cd $RVZR_DIR/src;
mkdir -p logs

# Determine which Python version to use
if echo "$DEFENSE" | grep -iq "speclfb"; then
    PYTHON_CALL="python3"
else
    PYTHON_CALL="python3.11"
fi

# Run benchmark
echo "Running benchmark for $DEFENSE with $CASES test cases, $INPUTS inputs per case, $ROUNDS rounds in parallel..."
$PYTHON_CALL benchmark.py -i "$INPUTS" \
               -n "$CASES" \
               -r "$ROUNDS" \
               -c "$conf" \
               --extra-args="$args" \
               -p "$DEFENSE" \
               -o "benchmark-out-$DEFENSE" \
               > "logs/bench-$DEFENSE.txt" 2>&1
               # --verbose

echo "Benchmark completed. Logs saved to $RVZR_DIR/src/benchmark-out-$DEFENSE/info.txt"
