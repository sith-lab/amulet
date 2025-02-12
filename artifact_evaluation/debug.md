## General
Output should appear inside the `artifact_evaluation/` directory as each run finishes.

### Ensure your docker container works!
Run `./dockerRun.sh invisispec start` from within `./docker`, then use `docker attach invisispec` to enter the docker container.
Or, run the `./run_artifact.sh` script and immediately (in another terminal) do `docker attach invisispec`.

Ensure that both the repos are pulled properly by navigating to `/code/revizor-docker` and `/code/gem5-docker` and checking if any files exist (these folders should both exist and be populated with files from their respective repos).

If the container IS starting up properly (after `./dockerRun.sh invisispec start`), then you should see it pull both repos, and then immediately attempt to compile gem5, before falling out into a shell prompt.

## Table 4 Debug
To debug for Table 4, you can use `docker attach invisispec` to enter the container, after running `./run_artifact.sh`. At some point, you should see 3 prints (to stdout) in this order, indicating progress:
- `------- testing trace format baseline ------`
- `------- testing trace format bpstate ------`
- `------- testing trace format bpredictions ------`
- `------- testing trace format access_order ------`


## Table 5 Debug
To debug for table 5, enter the container with `docker attach <defense>`, such that `<defense>` is one of `(invisispec | cleanupspec | speclfb | stt)` respectively. Inside the container, go to `/code/revizor-docker/src/logs`. There should be a `bench-<defense>.txt`, indicating progress.

As well, there should be a `/code/revizor-docker/src/benchmark-out-<defense>` directory showing progression of individual runs. Inside, there will be files named `log_round{n}_config000`; These are the output for each respective parallel run of AMuLeT. 

Inside,  you will see lines which look like this: `Progress: 2|2%, EfCl:50.0, AlCl:50.0, In:100.0, Cov:0, Prim:2, PErr:0, Viol:0, > Normal execution`. The "2" in `2|2%` shows us the current test case being executed; In this case, the 1st test case has finished execution, and the 2nd test case is currently executing.

Once the benchmark for a given defense is complete, there will also be a `info.txt` in this directory showing the final results, for just that defense. As well, the `run_artifact.sh` script should progress past `⏳ Waiting for 'Benchmark completed' in amulet/docker/docker_<defense>/revizor-docker/bench_sh.out...` after this point.


## Table 6 Debug
(TODO)