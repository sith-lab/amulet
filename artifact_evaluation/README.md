## Table 4: Different uarch trace formats

Run `./dockerRun.sh invisispec start uarch_trace_formats`, or run
`Table_4_uarch_trace_formats.sh` inside of the docker container -
this will output a LaTeX document containing the table to `docker/docker_invisispec/revizor-docker/artifact_evaluation/Table_4_Results.tex`,
and a plaintext listing to `Table_4_Results.txt`.

You can also provide the number of programs as an argument, e.g. `./Table_4_uarch_trace_formats.sh 10`,
if you want to try testing with a smaller number of programs first.

## Table 5: Results of testing defenses with AMuLeT-Opt
Run `./run_benchmarks.sh` (within ./docker)
This will automatically run a campaign for every defense in sequential order, and then generate the table with the run results.
Alternatively, to get more detailed results for a given defense, run `$BENCHMARK_SH <defense>` inside of any defense's docker container.
- Currently supported defenses are `(InvisiSpec|CleanupSpec|STT|SpecLFB)`

## Table 6: Smaller uarch structures

Run `./dockerRun.sh invisispec start smaller_uarch_structures`, or run `Table_6_Smaller_uarch_structures.sh`
inside of the docker container - this will output a LaTeX document containing the table to
`docker/docker_invisispec/revizor-docker/artifact_evaluation/Table_6_Results.tex`,
and a plaintext listing to `Table_6_Results.txt`.

You can also provide the number of programs as an argument, e.g. `./Table_6_Smaller_uarch_structures.sh 10`,
if you want to try testing with a smaller number of programs first.
