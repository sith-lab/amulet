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

# Track which files have seen "Benchmark completed"
declare -A completed_files
# Function to check if "Benchmark completed" exists in a file
check_file() {
  local file="$1"
  if [[ -f "$file" ]] && grep -q "Benchmark completed" "$file"; then
    if [[ -z "${completed_files[$file]}" ]]; then
      echo "✅ Benchmark completed in: $file";
      completed_files[$file]=1;
    fi
  fi
}
# Function to check all files
check_all_files() {
  local files=("$@") # Pass in via 'check_all_files "${files[@]}"'
  for file in "${files[@]}"; do
    check_file "$file";
  done
  # If all files are completed, return success
  if [[ ${#completed_files[@]} -eq ${#FILES[@]} ]]; then
    return 0
  else
    return 1
  fi
}

# Required lines in info.txt
REQUIRED_LINES=("contract_clause:" "detected_violation:" "avg_detection_time:" "testing_throughput:" "campaign_execution_time:");
# Function to check if all required lines exist in an info.txt file
validate_info_file() {
  local file="$1";
  for line in "${REQUIRED_LINES[@]}"; do
    if ! grep -q "^$line" "$file"; then
      echo "❌ Missing line '$line' in $file. Exiting.";
      exit 1;
    fi
  done
}
# Gather data from info.txt files
gather_data() {
  local file="$1";
  local data=();
  for line in "${REQUIRED_LINES[@]}"; do
    value=$(grep "^$line" "$file" | cut -d':' -f2- | xargs);
    data+=("$value");
  done
  echo "${data[@]}";
}

####################################################################################################
table_data=();
info_filepaths=();
benchout_filepaths=();

# Make array of info.txt file paths
for i in "${!DEFENSES[@]}"; do
    info_file="$(get_benchout_dir "${LC_DEFENSES[$i]}" "${DEFENSES[$i]}")/info.txt";
    info_filepaths+=("$info_file");
done
# Clear out and any old info.txt's and touch the files
for file in "${info_filepaths[@]}"; do
    mkdir -p "$(dirname "$file")"
    : > "$file"
done

# Make array of bench_sh.out file paths
for i in "${!LC_DEFENSES[@]}"; do
    benchout_file="$(get_rvzr_dir "${LC_DEFENSES[$i]}")/bench_sh.out";
    benchout_filepaths+=("$benchout_file");
done
# Clear out any old info.txt's
for file in "${benchout_filepaths[@]}"; do
    mkdir -p "$(dirname "$file")"
    : > "$file"
done

# Start containers
./dockerRun.sh killall;
for defense in "${LC_DEFENSES[@]}"; do
    echo "🚀 Running: ./dockerRun.sh $defense start benchmark";
    ./dockerRun.sh "$defense" start benchmark;
done
# Confirm container status
./dockerRun.sh list;

# Wait for benchmarks to finish
echo "⏳ Waiting for 'Benchmark completed' in all info.txt files..."
while true; do
    inotifywait -e modify "${info_filepaths[@]}" >/dev/null 2>&1
    check_all_files "${benchout_filepaths[@]}" && break;
done
echo "🚀 Benchmarking has completed!"

# Leave in case of manual inspection
# Stop containers
# for defense in "${LC_DEFENSES[@]}"; do
#     echo "Stopped container for $defense";
#     ./dockerRun.sh "$defense" stop;
# done

# Parse results from info.txt files
for i in "${!info_filepaths[@]}"; do
    file="${info_filepaths[$i]}";
    validate_info_file "$file";
    table_data+=("${DEFENSES[$i]} $(gather_data "$file")");
done
echo "📊 Results parsed! ✅"

# Output table
echo "📊 Table 5 Benchmark Results 📊:";
echo -e "Defense\tContract\tDetected Violation?\tAvg. Detection Time (sec)\tTesting Throughput (test cases/sec)\tCampaign Execution Time"
echo -e "---------------------------------------------------------------------------------------------------------"
for row in "${table_data[@]}"; do
    echo -e "$row";
done

echo "🎉 All benchmarks finished!"
