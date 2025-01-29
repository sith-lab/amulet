#!/bin/bash

# Check if the user provided a configname argument
if [ -z "$1" ]; then
  echo "Usage: $1 <asm>"
  exit 1
fi

# Save the configname provided as the first argument in a variable
filename="$1"


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

# Convert the first argument to an integer
defense=$"$3"

entropies=(4 8 12)
filename_we="${filename%.*}"

cd $RVZR_DIR/src;

for ((i=1; i<=$(expr $num_seed); i++)); do 
    seed=$RANDOM
    for entropy in "${entropies[@]}"; do
    nohup python3.11  ./cli.py fuzz -c $YAML_PATH -s x86/isa_spec/base.json -n 5 -i 50  -t $TEST_DIR/$filename -p "$filename_we"_"$seed"_"$entropy" --input-seed=$seed --entropy-bits=$entropy --$defense --ruby &> $RVZR_DIR/fuzz_output/"$filename_we"_"$seed"_"$entropy".out;
    rm -r debug_"$filename_we"_"$seed"_"$entropy";
    done
done
