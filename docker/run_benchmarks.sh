#!/bin/bash
set -e  # Exit immediately on any error
DOCKER_DIR=$PWD  # Assumed to be (repo_root)/docker

# Benchmark arguments
TEST_CASES=$1;
INPUTS=$2;
PARALLEL_INSTANCES=$3;

# DOLMA not yet supported
DEFENSES=("InvisiSpec" "CleanupSpec" "SpecLFB" "STT" )  # Used for benchmark
LC_DEFENSES=("invisispec" "cleanupspec" "speclfb" "stt")  # Used for docker

# Check if either all or none of the benchmark arguments are set
if ! { [[ -n "$TEST_CASES" && -n "$INPUTS" && -n "$PARALLEL_INSTANCES" ]] || \
       [[ -z "$TEST_CASES" && -z "$INPUTS" && -z "$PARALLEL_INSTANCES" ]]; }; then
    echo "Error: Either all or none of TEST_CASES, INPUTS, and PARALLEL_INSTANCES must be set."
    exit 1
fi

get_benchout_dir(){
  local lc_defense=$1
  local defense=$2
  echo "$DOCKER_DIR/docker_${lc_defense}/revizor-docker/src/benchmark-out-${defense}"
}
get_rvzr_dir(){
  local lc_defense=$1
  echo "$DOCKER_DIR/docker_${lc_defense}/revizor-docker"
}

# Required lines in info.txt
REQUIRED_LINES=("contract_clause:" "detected_violation:" "avg_detection_time:" "testing_throughput:" "campaign_execution_time:")

validate_info_file() {
  local file="$1"
  if [[ ! -f "$file" ]]; then
    echo "❌ ERROR: Info file $file does not exist. Exiting."
    exit 1
  fi

  for line in "${REQUIRED_LINES[@]}"; do
    if ! grep -q "^$line" "$file"; then
      echo "❌ ERROR: Missing line '$line' in $file. Exiting."
      exit 1
    fi
  done
}

gather_data() {
  local file="$1"
  local data=()
  
  for line in "${REQUIRED_LINES[@]}"; do
    value=$(grep "^$line" "$file" | cut -d':' -f2- | xargs)
    data+=("$value")
  done
  
  # Output tab-separated values
  printf "%s\t" "${data[@]}"
}

cleanup_on_failure() {
  # Leave containers for now in case manual inspection needed
  echo "Leaving containers running for manual inspection."
  # echo "⚠️ Cleaning up before exit..."
  # for lc_defense in "${LC_DEFENSES[@]}"; do
  #   echo "🛑 Stopping container for $lc_defense"
  #   ./dockerRun.sh "$lc_defense" stop || true  # Ignore errors during cleanup
  # done
  echo "❌ Exiting due to error."
  exit 1
}

trap cleanup_on_failure ERR  # Run cleanup if any error occurs

# Process benchmarks one at a time
table_data=()

for i in "${!DEFENSES[@]}"; do
    defense="${DEFENSES[$i]}"
    lc_defense="${LC_DEFENSES[$i]}"
    info_file="$(get_benchout_dir "$lc_defense" "$defense")/info.txt"
    benchout_file="$(get_rvzr_dir "$lc_defense")/bench_sh.out"

    echo "🛑 Stopping container for $lc_defense"
    ./dockerRun.sh "$lc_defense" stop

    # Remove any existing benchmark output directories
    echo "🧹 Cleaning up any previous revizor-docker dir..."
    rm -rf "$(get_rvzr_dir "$lc_defense")"

    # Start container
    BENCHMARK_ARGS="TEST_CASES=${TEST_CASES}:INPUTS=${INPUTS}:PARALLEL_INSTANCES=${PARALLEL_INSTANCES}";
    echo "📊 Benchmarking $defense with args: $BENCHMARK_ARGS 🚀"
    echo "🚀 Running: ./dockerRun.sh $lc_defense start benchmark $BENCHMARK_ARGS"
    if ! ./dockerRun.sh "$lc_defense" start benchmark "$BENCHMARK_ARGS"; then
        echo "❌ ERROR: Failed to start container for $defense"
        exit 1;
    fi

    # Wait for bench_sh.out to be created
    echo "⏳ Waiting for $benchout_file to be created..."
    while [[ ! -f "$benchout_file" ]]; do
        sleep 1  # Check every second
    done
    # Wait for benchmark completion
    echo "⏳ Waiting for 'Benchmark completed' in $benchout_file..."
    while true; do
        if grep -q "Benchmark completed" "$benchout_file" 2>/dev/null; then
            echo "✅ Benchmark completed for $defense!"
            break
        fi
        sleep 1  # Check every second
    done

    # Wait for info.txt to be created
    echo "⏳ Waiting for $info_file to be created..."
    while [[ ! -f "$info_file" ]]; do
        sleep 0.5
    done
    echo "✅ $info_file created"
    validate_info_file "$info_file"

    # Gather results; Also tab-separate $defense for table formatting
    table_data+=("$defense\t$(gather_data "$info_file")")

    # Leave containers for now in case manual inspection needed
    # echo "🛑 Stopping container for $lc_defense"
    # if ! ./dockerRun.sh "$lc_defense" stop; then
    #     echo "⚠️ WARNING: Failed to stop container for $defense. Continuing..."
    # fi

    echo "✅ Completed benchmark for $defense"
done

table_out="$DOCKER_DIR/Table_5_Results.out"
# Create a temporary file for column formatting
TMP=benchmarks.out
# Define table header with separators
echo -e "Defense\tContract\tDetected Violation?\tAvg. Detection Time (sec)\tTesting Throughput (test cases/sec)\tCampaign Execution Time" > "$TMP"
# Append the data rows
for row in "${table_data[@]}"; do
    echo -e "$row" >> "$TMP"
done
python3 format_benchmark_table.py "$TMP" "$table_out";
cat "$table_out"

echo "🎉 All benchmarks finished successfully!" | tee -a "$table_out"
