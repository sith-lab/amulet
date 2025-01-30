#!/bin/sh

# Number of test programs to run
PROGRAMS="${1:-200}"

RESULTS=/code/revizor-docker/artifact_evaluation/Table_6_Results.txt
echo "Smaller uarch structures - $PROGRAMS programs" > $RESULTS

cd /code/revizor-docker/src
for row in 1 2 3; do
    case $row in
        1)
            config=../docker/docker_invisispec/docker_gem5_v1_final_cache_and_tlb_patched.yaml
            name=baseline ;;
        2)
            config=../docker/docker_invisispec/docker_gem5_v1_final_cache_and_tlb_patched_reduced_cache.yaml
            name=reduced_cache ;;
        3)
            config=../docker/docker_invisispec/docker_gem5_v1_final_cache_and_tlb_patched_reduced_cache_and_mshrs.yaml
            name=reduced_cache_and_mshrs ;;
    esac
    echo "Running benchmark $name"
    python3.11 benchmark.py --extra-args='--ruby,--InvisiSpec,--InvisiSpec_Futuristic,-s,x86/isa_spec/base.json'\
        --configs=$config --rounds=100 -n $PROGRAMS -o benchmark-out-$name

    echo "=== $name ===" >> $RESULTS
    grep 'detected_violation' benchmark-out-$name/info.txt >> $RESULTS
    grep 'campaign_execution_time' benchmark-out-$name/info.txt >> $RESULTS


done
