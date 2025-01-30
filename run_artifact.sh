#!/bin/bash

cd docker

echo 'Generating Table 4...'
./dockerRun.sh invisispec stop
./dockerRun.sh invisispec start uarch_trace_formats
while [ '!' '-f' 'docker_invisispec/revizor-docker/artifact_evaluation/Table_4_Results.tex' ]; do
	sleep 30
done


echo 'Generating Table 6...'
./dockerRun.sh invisispec stop
./dockerRun.sh invisispec start smaller_uarch_structures
while [ '!' '-f' 'docker_invisispec/revizor-docker/artifact_evaluation/Table_6_Results.tex' ]; do
	sleep 30
done


