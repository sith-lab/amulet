#!/bin/bash
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
REQUIRED_LINES=("contract_clause:" "detected_violation:" "avg_detection_time:" "testing_throughput:" "campaign_execution_time:");

validate_info_file() {
  local file="$1";
  for line in "${REQUIRED_LINES[@]}"; do
    if ! grep -q "^$line" "$file"; then
      echo "❌ Missing line '$line' in $file. Exiting.";
      exit 1;
    fi
  done
}

gather_data() {
  local file="$1";
  local data=();
  for line in "${REQUIRED_LINES[@]}"; do
    value=$(grep "^$line" "$file" | cut -d':' -f2- | xargs);
    data+=("$value");
  done
  echo "${data[@]}";
}

# Process benchmarks one at a time
table_data=();

for i in "${!DEFENSES[@]}"; do
    defense="${DEFENSES[$i]}"
    lc_defense="${LC_DEFENSES[$i]}"

    info_file="$(get_benchout_dir "$lc_defense" "$defense")/info.txt"
    benchout_file="$(get_rvzr_dir "$lc_defense")/bench_sh.out"

    # Ensure files exist and are empty before running
    mkdir -p "$(dirname "$info_file")"
    : > "$info_file"
    mkdir -p "$(dirname "$benchout_file")"
    : > "$benchout_file"

    # Start container
    echo "🚀 Running: ./dockerRun.sh $lc_defense start benchmark"
    ./dockerRun.sh "$lc_defense" start benchmark

    # Wait for benchmark completion
    echo "⏳ Waiting for 'Benchmark completed' in $benchout_file..."
    while true; do
        inotifywait -e modify "$benchout_file" >/dev/null 2>&1
        if grep -q "Benchmark completed" "$benchout_file"; then
            echo "✅ Benchmark completed for $defense!"
            break
        fi
    done

    # Validate info.txt file
    validate_info_file "$info_file"

    # Gather results
    table_data+=("$defense $(gather_data "$info_file")")

    # Leave containers for now in case manual inspection needed
    # echo "🛑 Stopping container for $lc_defense"
    # ./dockerRun.sh "$lc_defense" stop

    echo "✅ Completed benchmark for $defense"
done

# Output table
echo "📊 Table 5 Benchmark Results 📊"
echo -e "Defense\tContract\tDetected Violation?\tAvg. Detection Time (sec)\tTesting Throughput (test cases/sec)\tCampaign Execution Time"
echo -e "---------------------------------------------------------------------------------------------------------"
for row in "${table_data[@]}"; do
    echo -e "$row"
done

echo "🎉 All benchmarks finished!"
