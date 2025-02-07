# AMuLeT

This is AMuLeT, the Automated Microarchitectural Leak Tester.

AMuLeT is a white-box fuzz testing framework, which uses relational testing to find microarchitectural system leakage. We test a reference architectural simulator ([Unicorn Engine](https://www.unicorn-engine.org/)) against a theoretical microarchitectural defense, typically implemented in the microarchtectural simulator [gem5](https://www.gem5.org/). For any 2 test cases (program + input), if their end state is architecturally equivalent (i.e. registers, data values) but not microarchitecturally equivalent (i.e. cache state, branch predictor tables), then we can determine that this test case causes a microarchitectural leak in the defense.

This work builds upon and is inspired by [Revizor](https://github.com/microsoft/sca-fuzzer).

# Supported Defenses (so far):
- Baseline (no defense)
- InvisiSpec
- CleanupSpec 
- STT
- SpecLFB
- DOLMA (In progress; Benchmarking is unimplemented yet)

Please reach out if you would like to add support for your defense, we will be happy to accept a PR.

# Getting Started

## Requirements & Dependencies

* Hardware Requirements

    So far, AMuLeT supports only the x86 ISA, as both the host and the simulation base.

* Software Requirements
    * Docker

# Installation

- We provide the steps to set up root-less docker since many shared systems do not allow running docker without root privileges. If docker is already set up, then this is not necessary; Please run `docker run hello-world` to ensure docker is correctly set-up on your system.

## Docker Setup (on Ubuntu 24.04 host):
1. Dependencies - https://docs.docker.com/engine/install/ubuntu/:
```bash
  for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
  sudo apt-get update
  sudo apt-get install ca-certificates curl gnupg libpng-dev libhdf5-dev
  sudo install -m 0755 -d /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  sudo chmod a+r /etc/apt/keyrings/docker.gpg
  echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update
```

2. Install:
```bash 
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

3. Post-Installation Steps (for rootless mode) - https://docs.docker.com/engine/install/linux-postinstall/
```bash
  sudo groupadd docker
  sudo gpasswd -a $USER docker # Will no longer need sudo perms to run docker!
  newgrp docker # Or log out&in
```

- Now, verify your user is now a member of the `docker` group.
```bash
  # Should output that you are a member of the docker group, like so:
  fubof@dolphin:~/code$ groups
  docker sudo fubof
```

- Lastly, run these steps to start up docker and verify that it runs.
```bash
  sudo service docker start
  sudo service --status-all
  docker run hello-world
  export DOCKER_HOST=unix:///var/run/docker.sock
```

## Quick Start

```bash
cd docker;
./dockerRun.sh stt start
docker attach stt
$RVZR_RUN # Inside container
./dockerRun.sh stt stop # To end test container
```

## Artifact Evaluation

Run `./run_artifact.sh`

Results for each table will be generated and placed in `artifact_evaluation/Table_4_Results.txt`, `artifact_evaluation/Table_5_Results.out`, `artifact_evaluation/Table_5_Results_stt_only.out`, and `artifact_evaluation/Table_6_Results.txt` respectively.

If you would like to generate each table individually, follow these instructions while within `./docker`:

### Table 4: Different uarch trace formats

Run `./dockerRun.sh invisispec start uarch_trace_formats`, or run
`Table_4_uarch_trace_formats.sh` inside of the docker container -
this will output a LaTeX document containing the table to `docker/docker_invisispec/revizor-docker/artifact_evaluation/Table_4_Results.tex`,
and a plaintext listing to `Table_4_Results.txt`.

You can also provide the number of programs as an argument, e.g. `./Table_4_uarch_trace_formats.sh 10`,
if you want to try testing with a smaller number of programs first.

This table will take around ~22 hours to generate. (Tested on an AMD EPYC 7713 @ 3.72GHz)

## Table 5: Results of testing defenses with AMuLeT-Opt

Run `./run_benchmarks.sh`

`./run_benchmarks.sh` also takes optional arguments `[TEST_CASES] [INPUTS] [PARALLEL_INSTANCES]`

For example, to benchmark all defenses using 200 test cases, 70 inputs (each input is boosted, so this is 140 total inputs) per test case, and 50 instances in parallel:

- `./run_benchmarks.sh 200 70 50`

This will automatically run a campaign for every defense in sequential order, and then generate a table with all the run results.
Alternatively, to get more detailed results for a given defense, run `$BENCHMARK_SH <defense>` inside of any defense's docker container.

- Currently supported defenses are `(InvisiSpec|CleanupSpec|STT|SpecLFB)`

The output of `./run_benchmarks.sh` will be copied over to this directory as `Table_5_Results.out`. Here is some example output:
```
+-------------+----------+---------------------+---------------------------+-------------------------------------+-------------------------------+
| Defense     | Contract | Detected Violation? | Avg. Detection Time (sec) | Testing Throughput (test cases/sec) | Campaign Execution Time (sec) |
+-------------+----------+---------------------+---------------------------+-------------------------------------+-------------------------------+
| InvisiSpec  | CT-SEQ   | YES                 | 4.67                      | 640.01                              | 2187.46                       |
| CleanupSpec | CT-SEQ   | YES                 | 1.66                      | 2430.62                             | 575.98                        |
| SpecLFB     | CT-SEQ   | YES                 | 1.14                      | 3858.07                             | 362.88                        |
+-------------+----------+---------------------+---------------------------+-------------------------------------+-------------------------------+
```

This table will take around ~2.5 hours to generate. (Tested on an AMD EPYC 7713 @ 3.72GHz)


We have also created a `./run_benchmarks_stt_only.sh`, as this run takes the longest time. It takes the same arguments as `./run_benchmarks.sh`.

The output will be copied over as `Table_5_Results_stt_only.out`. Here is some example output:

```
+-------------+----------+---------------------+---------------------------+-------------------------------------+-------------------------------+
| Defense     | Contract | Detected Violation? | Avg. Detection Time (sec) | Testing Throughput (test cases/sec) | Campaign Execution Time (sec) |
+-------------+----------+---------------------+---------------------------+-------------------------------------+-------------------------------+
| STT         | ARCH-SEQ | YES                 | 12452.26                  | 22.49                               | 62261.31                      |
+-------------+----------+---------------------+---------------------------+-------------------------------------+-------------------------------+
```
This table will take around ~18 hours to generate. (Tested on an AMD EPYC 7713 @ 3.72GHz)

### Table 6: Smaller uarch structures

Run `./dockerRun.sh invisispec start smaller_uarch_structures`, or run `Table_6_Smaller_uarch_structures.sh`
inside of the docker container - this will output a LaTeX document containing the table to
`docker/docker_invisispec/revizor-docker/artifact_evaluation/Table_6_Results.tex`,
and a plaintext listing to `Table_6_Results.txt`.

You can also provide the number of programs as an argument, e.g. `./Table_6_Smaller_uarch_structures.sh 10`,
if you want to try testing with a smaller number of programs first.

## Docker Flow

Given defense 'stt':
- `dockerRun.sh` calls `stt.Dockerfile` (in `docker_stt`)
- `stt.Dockerfile` calls `entrypoint.sh`
- `entrypoint.sh`:
  - "Borrows" your host system credentials (entire `~/.ssh` dir) to pull `https://github.com/mguarnieri/vanilla-gem5-testing-benchmark/tree/STT-IPC`
  - Calls `revizor_run.sh`

**Please put all your run instantiation code into the respective `docker_<defense>/revizor_run.sh`!**

# Fuzzing Example

- Look into the respective defense subfolder for run examples (i.e. `docker/docker_stt/revizor_run.sh`)
```bash
# Example usages of Revizor with IPC orchestration
YAML=/code/revizor-docker/docker/docker_stt/docker_gem5_v1_final_cache_tlb.yaml;
cd /code/revizor-docker/src; mkdir -p logs;
for i in $(seq 1 100); do
    python3.11 ./cli.py fuzz -s x86/isa_spec/base.json --nonstop --ruby --STT --STT_FuturisticSpec -i 70 -n 200 -c $YAML -p stt-$i &> logs/stt-$i.txt &
    echo "Launched stt-$i - Check /code/revizor-docker/src/logs/stt-$i.txt for results";
done
```

# Command line interface

The fuzzer is controlled via a single command line interface `cli.py` (located in `src/cli.py`). It accepts the following arguments:

* `-s, --instruction-set PATH` - path to the ISA description file
* `-c, --config PATH` - path to the fuzzing configuration file
* `-n , --num-test-cases N` - number of test cases to be tested
* `-i , --num-inputs N` - number of input classes per test case. The number of actual inputs = input classes * inputs_per_class, which is a configuration option
* `-t , --testcase PATH` - use an existing test case instead of generating random test cases

# Benchmarking
 - Please see artifact_evaluation/README.md to generate all tables from paper

Within a docker container, run `$BENCHMARK_SH <defense> [test cases] [inputs] [parallel_instances]`
- Currently supported defenses are `(InvisiSpec|CleanupSpec|STT|SpecLFB)`
- `[test cases] [inputs] [parallel_instances]` are optional args. By default, we run 200 test cases, each with 70 inputs, and **50** instances of runs in parallel.
  - Default on the paper is 100 `parallel_instances`. Changed to 50 by reviewer request. Worse performance is expected with only 50 `parallel_instances`.

Within `$RVZR_DIR/src/benchmark-out-<defense>/`, the output for each parallel fuzzing round will appear as `log_round<i>_config000`.

You can check how long the run has occured, as well as stdout/stderr, within `$RVZR_DIR/src/logs/bench-<defense>.txt`.
Upon the end of a run, a results table will be generated, with this format:
```
==============================================================================================
Config 0: /code/revizor-docker/docker/docker_stt/docker_gem5_v1_final_cache_tlb.yaml

Command line: 
python3.11 cli.py fuzz -s /code/revizor-docker/src/x86/isa_spec/base.json -i 2 -n 4 -c /code/revizor-docker/docker/docker_stt/docker_gem5_v1_final_cache_tlb.yaml -p bench_STT_config0_round0 --no-save-stats --result-dir=benchmark-out-STT/config0 --ruby --STT --STT_Futuristic --nonstop

avg_wall_time: 44.64
total_system_time: 446.41
total_test_programs: 30
input_count: 2
total_test_cases: 60
total_violations: 0
avg_violations: 0.00

contract_clause: ARCH-SEQ
detected_violation: NO
avg_detection_time: 0.00
testing_throughput: 1.34
campaign_execution_time: 44.64

Detailed Results - Config 0
===========================
Round    | Execution Time (s)   | Test Cases   | Violations Found   | First Violation (s)   
-------- | -------------------- | ------------ | ------------------ | ----------------------
       0 |                57.36 |            3 |                  0 |                    N/A
       1 |                46.20 |            3 |                  0 |                    N/A
       2 |                47.06 |            3 |                  0 |                    N/A
       3 |                55.95 |            3 |                  0 |                    N/A
       4 |                35.50 |            3 |                  0 |                    N/A
       5 |                47.16 |            3 |                  0 |                    N/A
       6 |                48.67 |            3 |                  0 |                    N/A
       7 |                27.18 |            3 |                  0 |                    N/A
       8 |                54.97 |            3 |                  0 |                    N/A
       9 |                26.36 |            3 |                  0 |                    N/A
    Mean |                44.64 |            - |                0.0 |                      -
 Std Dev |                11.30 |            - |               0.00 |                      -
-------- | -------------------- | ------------ | ------------------ | ----------------------
==============================================================================================
```

Hopefully your results table has some violations to discover!

# Development
- Any changes in the revizor-side repo besides `revizor_run.sh` & `optional_run.sh` needs to be pushed (so the container can pull the new updates)
- Any changes at all in the gem5-side repo needs to be pushed
- Outside changes can be pulled inside the container, but pushing inside changes will cause a git error
- Must push new changes from outside container & pull them inside the container to get updates.

## Git Messages (From microsoft/sca-fuzzer)

We practice the following conventions for commit messages:

```
<scope>: [<type>] <subject>
```

Where:

* `<scope>`: The scope of the change.
* `<type>`: The type of the change.
* `<subject>`: A short description of the change.


### Scopes

The following scopes are typical:


| Scope       | Description                                                      |
| ----------- | ---------------------------------------------------------------- |
| `all`       | Changes that affect the entire project (e.g., major refactoring) |
| `docker`    | Docker config changes                                            |
| `root`      | Root directory changes (e.g., readme, git, author list)          |
| `fuzz`      | Changes to the core fuzzer algorithm.                            |
| `cli`       | Changes to the command-line interface.                           |
| `exec`      | Changes to the executor.                                         |
| `model`     | Changes to the model.                                            |
| `analyser`  | Changes to the analyser.                                         |
| `mini`      | Changes to the postprocessor (i.e., minimizer).                  |
| `gen`       | Changes to the program generator                                 |
| `input_gen` | Changes to the input generator                                   |
| `tests`     | Changes to the tests                                             |
| `isa`       | Changes to the ISA loader or to `get_spec` files                 |

If a commit covers several scopes, use the most relevant one.

If a commit targets a specific architecture (e.g., x86), add the architecture to the scope (e.g., `fuzz/x86`).

### Types

Use one of the following types:

| Type     | Description                                                                   |
| -------- | ----------------------------------------------------------------------------- |
| `feat`   | A new feature.                                                                |
| `fix`    | A bug fix.                                                                    |
| `docs`   | Documentation changes.                                                        |
| `chore`  | Changes to the build process or auxiliary tools.                              |
| `ft`     | Fault tolerance changes (e.g., adding error handling or recovery mechanisms). |
| `refact` | Refactoring of the codebase. This includes code style change.                 |
| `perf`   | Performance improvements.                                                     |
| `revert` | Reverts a previous commit.                                                    |


