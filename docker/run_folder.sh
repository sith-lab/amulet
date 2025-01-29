#!/bin/bash

# Check if the user provided a configname argument
if [ -z "$1" ]; then
  echo "Usage: $1 <configname>"
  exit 1
fi

# Save the configname provided as the first argument in a variable
export CONFIGNAME="$1"


if [ ! -d "$CONFIGNAME" ]; then
  echo "Directory '$CONFIGNAME' does not exist."
  exit 1
fi

# Check if an number of seed is provided
if [ -z "$2" ]; then
  echo "Usage: $2 <number of seeds> (integer)"
  exit 1
fi

# Convert the first argument to an integer
num_seed=$(( $2 ))

if [ -z "$3" ]; then
  echo "Usage: $3 <defense>"
  exit 1
fi

defense=$"$3"

export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export GEM5_DIR=$CODE_DIR/gem5-docker;
export TEST_DIR=$CODE_DIR/"$CONFIGNAME";
export YAML_PATH=$TEST_DIR/"$CONFIGNAME".yaml;

entropies=(4 8 12);

cd $RVZR_DIR;
rm -r ./fuzz_output;
mkdir fuzz_output;
cd $CODE_DIR;


for file in "$TEST_DIR"/*.asm; do
    if [[ -f "$file" ]]; then
        filename=$(basename "$file")
        echo "$filename"
        ./run_test_case.sh $filename $num_seed $defense &
    fi
done