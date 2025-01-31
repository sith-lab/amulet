## Table 4: Different uarch trace formats

Run `./dockerRun.sh invisispec start uarch_trace_formats`, or run
`Table_4_uarch_trace_formats.sh` inside of the docker container -
this will output a LaTeX document containing the table to `docker/docker_invisispec/revizor-docker/artifact_evaluation/Table_4_Results.tex`,
and a plaintext listing to `Table_4_Results.txt`.

You can also provide the number of programs as an argument, e.g. `./Table_4_uarch_trace_formats.sh 10`,
if you want to try testing with a smaller number of programs first.

## Table 5: Results of testing defenses with AMuLeT-Opt

Run `./run_benchmarks.sh` (within ./docker)

`./run_benchmarks.sh` also takes optional arguments `[TEST_CASES] [INPUTS] [PARALLEL_INSTANCES]`

For example, to benchmark all defenses using 200 test cases, 70 inputs (each input is boosted, so this is 140 total inputs) per test case, and 50 instances in parallel:

- `./run_benchmarks.sh 200 70 50`

This will automatically run a campaign for every defense in sequential order, and then generate a table with all the run results.
Alternatively, to get more detailed results for a given defense, run `$BENCHMARK_SH <defense>` inside of any defense's docker container.

- Currently supported defenses are `(InvisiSpec|CleanupSpec|STT|SpecLFB)`

The output of `./run_benchnmarks.sh` will be copied over to this directory as `Table_5_Results.out`. Here is some example output:
```
+-------------+----------+---------------------+---------------------------+-------------------------------------+-------------------------+
| Defense     | Contract | Detected Violation? | Avg. Detection Time (sec) | Testing Throughput (test cases/sec) | Campaign Execution Time |
+-------------+----------+---------------------+---------------------------+-------------------------------------+-------------------------+
| InvisiSpec  | CT-SEQ   | NO                  | 0.00                      | 13.23                               | 4.54                    |
| CleanupSpec | CT-SEQ   | NO                  | 0.00                      | 12.30                               | 4.88                    |
| STT         | ARCH-SEQ | NO                  | 0.00                      | 1.15                                | 52.33                   |
| SpecLFB     | CT-SEQ   | YES                 | 0.32                      | 18.98                               | 3.16                    |
+-------------+----------+---------------------+---------------------------+-------------------------------------+-------------------------+
```

## Table 6: Smaller uarch structures

Run `./dockerRun.sh invisispec start smaller_uarch_structures`, or run `Table_6_Smaller_uarch_structures.sh`
inside of the docker container - this will output a LaTeX document containing the table to
`docker/docker_invisispec/revizor-docker/artifact_evaluation/Table_6_Results.tex`,
and a plaintext listing to `Table_6_Results.txt`.

You can also provide the number of programs as an argument, e.g. `./Table_6_Smaller_uarch_structures.sh 10`,
if you want to try testing with a smaller number of programs first.
