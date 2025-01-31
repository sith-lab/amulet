#!/bin/bash
set -e  # Exit immediately on any error

DOCKER_DIR=$PWD  # Assumed to be (repo_root)/docker

# DOLMA not yet supported
# DEFENSES=("InvisiSpec" "CleanupSpec" "STT" "SpecLFB")  # Used for benchmark
# LC_DEFENSES=("invisispec" "cleanupspec" "stt" "speclfb")  # Used for docker
DEFENSES=("STT" "SpecLFB")  # Used for benchmark
LC_DEFENSES=("stt" "speclfb")  # Used for docker

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
  
  echo "${data[@]}"
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
    echo "🚀 Running: ./dockerRun.sh $lc_defense start benchmark"
    if ! ./dockerRun.sh "$lc_defense" start benchmark; then
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

    # Gather results
    table_data+=("$defense $(gather_data "$info_file")")

    # Leave containers for now in case manual inspection needed
    # echo "🛑 Stopping container for $lc_defense"
    # if ! ./dockerRun.sh "$lc_defense" stop; then
    #     echo "⚠️ WARNING: Failed to stop container for $defense. Continuing..."
    # fi

    echo "✅ Completed benchmark for $defense"
done

# --> CHANGED: Output results to a file
TABLE_OUTPUT="$DOCKER_DIR/Table_5_Results.out"
echo "📊 Table 5 Benchmark Results 📊" | tee "$TABLE_OUTPUT"
echo -e "Defense\tContract\tDetected Violation?\tAvg. Detection Time (sec)\tTesting Throughput (test cases/sec)\tCampaign Execution Time" | tee -a "$TABLE_OUTPUT"
echo -e "---------------------------------------------------------------------------------------------------------" | tee -a "$TABLE_OUTPUT"
for row in "${table_data[@]}"; do
    echo -e "$row" | tee -a "$TABLE_OUTPUT"
done

echo "🎉 All benchmarks finished successfully!" | tee -a "$TABLE_OUTPUT"
