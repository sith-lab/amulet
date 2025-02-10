#!/bin/bash
# Fastest to Slowest

cd docker;

# Table 5
echo 'Generating Table 5 for InvisiSpec, CleanupSpec, SpecLFB...'
./run_benchmarks.sh 200 70 100;
cp -v ./Table_5_Results.out ../artifact_evaluation/Table_5_Results.out;

# Table 6
echo 'Generating Table 6...'
./dockerRun.sh invisispec stop
./dockerRun.sh invisispec start smaller_uarch_structures
while true; do
	sleep 30
	result_file=docker_invisispec/revizor-docker/artifact_evaluation/Table_6_Results.tex
	# Wait for tex file to contain "end{document}"
	if [ '-f' $result_file ] && grep -q 'end{document}' $result_file; then
		break
	fi
done
cp docker_invisispec/revizor-docker/artifact_evaluation/Table_6_Results* ../artifact_evaluation/

# Table 5 for STT
echo 'Generating Table 5 for STT...'
./run_benchmarks_stt_only.sh 200 70 100;
cp -v ./Table_5_Results.out ../artifact_evaluation/Table_5_Results_stt_only.out;

# Table 4
echo 'Generating Table 4...'
./dockerRun.sh invisispec stop
./dockerRun.sh invisispec start uarch_trace_formats
while [ '!' '-f' 'docker_invisispec/revizor-docker/artifact_evaluation/Table_4_Results.tex' ]; do
	sleep 30
done
# Wait for Python script to finish writing
sleep 10
cp docker_invisispec/revizor-docker/artifact_evaluation/Table_4_Results* ../artifact_evaluation/
