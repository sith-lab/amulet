#!/bin/bash

# Check if the user provided a configname argument
if [ -z "$1" ]; then
  echo "Usage: $1 <containername>"
  exit 1
fi

# Save the configname provided as the first argument in a variable
container="$1"

#!/bin/bash

# Check if the user provided a configname argument
if [ -z "$2" ]; then
  echo "Usage: $2 <configname>"
  exit 1
fi

# Save the configname provided as the first argument in a variable
configname="$2"

if [ $container == "stt" ]; then
    defense="STT";
fi

if [ $container == "invisispec" ]; then
    defense="InvisiSpec";
fi

if [ $container == "cleanupspec" ]; then
    defense="CleanupSpec";
fi

docker cp ./run_folder.sh $container:/code
docker cp ./run_test_case.sh $container:/code
docker cp ./$configname $container:/code

#./run_folder.sh $configname 5 $defense