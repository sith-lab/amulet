#!/bin/sh

# Number of test programs to run for each trace format (x 100 parallel runs)
PROGRAMS=${1:-200}
VIOLATIONS_DIR=/code/revizor-docker/artifact_evaluation/Table_4_violations

# Test N different trace formats on InvisiSpec_UnsafeBaseline:
#  - baseline (L1D+TLB)
#  - branch predictor state
#  - branch predictions (ordered list of <branch PC, predicted target PC> for each predicted branch)
#  - memory accesses (ordered list of <access PC, accessed address> for each access)

cd /code/revizor-docker/src

mkdir -p logs

for format in baseline bp_state bpredictions access_order; do
    if [ "$format" = 'baseline' ]; then
        cfg="../docker/docker_invisispec/docker_gem5_v1_final_cache_and_tlb.yaml"
    elif [ "$format" = 'bp_state' ]; then
        cfg="../docker/docker_invisispec/docker_gem5_v1_branch_pred_state.yaml"
    elif [ "$format" = 'bpredictions' ]; then
        cfg="../docker/docker_invisispec/docker_gem5_v1_branch_predictions.yaml"
    elif [ "$format" = 'access_order' ]; then
        cfg="../docker/docker_invisispec/docker_gem5_v1_access_order.yaml"
    else
        echo "bad format: $format"
        exit 1
    fi
    if [ '!' -f "$cfg" ]; then
        echo "config file $cfg doesn't exist"
        exit 1
    fi
    echo "------- testing trace format $format ------"
    rm -rf "${format}"_*results
    for i in $(seq 1 100); do
        python3.11 ./cli.py fuzz -s x86/isa_spec/base.json --ruby --InvisiSpec --InvisiSpec_UnsafeBaseline --gen-seed $i --input-seed $i -i 70 -n $PROGRAMS -c "$cfg" -p "${format}_$i" --result-dir "${format}_$i" --nonstop > "logs/${format}_$i.txt" &
    done
    wait
done

python3.11 ../artifact_evaluation/Table_4_helper.py $PROGRAMS
