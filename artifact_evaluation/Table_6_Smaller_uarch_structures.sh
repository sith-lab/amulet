#!/bin/sh

# Number of test programs to run
PROGRAMS="${1:-200}"

RESULTS=/code/revizor-docker/artifact_evaluation/Table_6_Results.txt
RESULTS_TEX=/code/revizor-docker/artifact_evaluation/Table_6_Results.tex
echo "Smaller uarch structures - $PROGRAMS programs" > $RESULTS

cat >$RESULTS_TEX <<EOF
\documentclass{article}
\begin{document}

Table 6, generated with $PROGRAMS programs

\begin{tabular}{lll}\hline
{\bf InvisiSpec Configuration}&{\bf Time}&{\bf Violation}\\\\\\hline
EOF

cd /code/revizor-docker/src
for row in 1 2 3; do
    case $row in
        1)
            config=../docker/docker_invisispec/docker_gem5_v1_final_cache_and_tlb_patched.yaml
            name=baseline
            fullname='Patched, 8-way L1D, 256 MSHRs';;
        2)
            config=../docker/docker_invisispec/docker_gem5_v1_final_cache_and_tlb_patched_reduced_cache.yaml
            name=reduced_cache
            fullname='Patched, 2-way L1D, 256 MSHRs';;
        3)
            config=../docker/docker_invisispec/docker_gem5_v1_final_cache_and_tlb_patched_reduced_cache_and_mshrs.yaml
            name=reduced_cache_and_mshrs
            fullname='Patched, 2-way L1D, 2 MSHRs';;
    esac
    echo "Running benchmark $name"
    python3.11 benchmark.py --extra-args='--ruby,--InvisiSpec,--InvisiSpec_Futuristic,-s,x86/isa_spec/base.json'\
        --configs=$config --rounds=50 -n $PROGRAMS -o benchmark-out-$name

    echo "=== $name ===" >> $RESULTS
    grep 'detected_violation' benchmark-out-$name/info.txt >> $RESULTS
    grep 'campaign_execution_time' benchmark-out-$name/info.txt >> $RESULTS
    execution_time=$(grep 'campaign_execution_time' benchmark-out-$name/info.txt | cut -d':' -f2)
    detected_violation=$(grep 'detected_violation' benchmark-out-$name/info.txt | cut -d':' -f2)
    execution_time=$(python3 -c "print(round($execution_time / 60))")" min"
    echo "$fullname & $execution_time & $detected_violation \\\\\\\\" >> $RESULTS_TEX
done

cat >>$RESULTS_TEX <<EOF
\hline
\end{tabular}
\end{document}
EOF
