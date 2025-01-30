#!/bin/bash
# If want more resource utilization for runs, use a multi_revizor_run.sh !!
# Parallelize revizor runs in container directly; Should only ever be 1 container running per defense

# Debug
# ./dockerRun.sh help;
# ./dockerRun grab_ssh;
# ./dockerRun.sh killall;
# ./dockerRun.sh list;

# ./dockerRun.sh <DEFENSE> start;
./dockerRun.sh killall;
./dockerRun.sh production start;
./dockerRun.sh invisispec start;
./dockerRun.sh stt start;
# ./dockerRun.sh cleanupspec start;
./dockerRun.sh list;

# # ./dockerRun.sh <DEFENSE> stop;
# ./dockerRun.sh production stop;
# ./dockerRun.sh invisispec stop;
# ./dockerRun.sh stt stop;
# ./dockerRun.sh cleanupspec stop;



