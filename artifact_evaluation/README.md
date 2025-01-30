## Table 4: Different uarch trace formats

Run `./dockerRun.sh invisispec start uarch_trace_formats`, or run
`Table_4_uarch_trace_formats.sh` inside of the docker container -
this will output a LaTeX document containing the table to `docker/docker_invisispec/revizor-docker/artifact_evaluation/Table_4_Results.tex`,
and a plaintext listing to `Table_4_Results.txt`.

You can also provide the number of programs as an argument, e.g. `./Table_4_uarch_trace_formats.sh 10`,
if you want to try testing with a smaller number of programs first.


## Table 6: Smaller uarch structures

Run `./dockerRun.sh invisispec start smaller_uarch_structures`, or run `Table_6_Smaller_uarch_structures.sh`
inside of the docker container - this will output a LaTeX document containing the table to
`docker/docker_invisispec/revizor-docker/artifact_evaluation/Table_6_Results.tex`,
and a plaintext listing to `Table_6_Results.txt`.

You can also provide the number of programs as an argument, e.g. `./Table_6_Smaller_uarch_structures.sh 10`,
if you want to try testing with a smaller number of programs first.
