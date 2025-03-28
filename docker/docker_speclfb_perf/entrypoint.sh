#!/bin/bash
# Non-interactive script!
# Don't touch the instance until this completes!

export GEM5_BRANCH=speclfb;
export RVZR_BRANCH=ipc;
export RVZR_DIR=/code/revizor-docker;
export GEM5_DIR=/code/gem5-docker;
export DOCKER_DIR=$RVZR_DIR/docker/docker_speclfb;
export RVZR_RUN=$DOCKER_DIR/scripts/revizor_run.sh;
export OPT_RUN=$DOCKER_DIR/scripts/optional_run.sh;
export BENCHMARK_SH=$RVZR_DIR/src/benchmark_all.sh;

export GEM5_PERF_ROOT=/code/gem5_perf;
export SPECBENCH_RUN=$DOCKER_DIR/scripts/specbench.sh;

# export VIOLATION_TEST_DIR=$RVZR_DIR/violation_test;
# export MINIMIZE_DIR=$RVZR_DIR/src/tests/minimize;

cd /code;
shopt -s dotglob; # Allows removal of dotfiles
rm -rf gem5-docker;
mkdir gem5-docker;
rm -rf revizor-docker;
mkdir revizor-docker;
rm -rf gem5_perf;
mkdir gem5_perf;
shopt -u dotglob;
echo "Done cleaning docker code dirs";

# These will be bound to the container root user; git for these dirs will be unusable by outside observer!!!
git -C /code/gem5-docker clone -b $GEM5_BRANCH git@github.com:sith-lab/amulet-gem5.git /code/gem5-docker;
chmod -R 777 /code/gem5-docker; # Else will not be able to edit contents of code dirs from host side
echo "Done pulling vanilla-gem5-testing-benchmark/$GEM5_BRANCH";
git -C /code/revizor-docker clone -b $RVZR_BRANCH git@github.com:sith-lab/amulet.git /code/revizor-docker;
chmod -R 777 /code/revizor-docker;
echo "Done pulling revizor-gem5/$RVZR_BRANCH";

# Set up Python
cd $GEM5_DIR && python3 -m pip install -e .

# PIP_VERSION=20.3.4; # 20.3.4 best working
# python3 -m ensurepip;
python3 -m pip install --upgrade pip==24.2; # Latest known working
python3 -m pip install unicorn pyyaml types-pyyaml numpy toml iced-x86 protobuf==3.20 pydot xxhash; # For revizor
python3 -m pip install scons pybind11 protobuf==3.20 pydot graphviz virtualenv; # SpecLFB Requirements

# python3.11 -m pip install --upgrade pip==$PIP_VERSION;
# cp -r /usr/local/lib/python3.11/site-packages/pip /usr/local/lib/python2.7/site-packages;
# cp -r /usr/local/lib/python3.11/site-packages/pip-$PIP_VERSION.dist-info /usr/local/lib/python2.7/site-packages;
# python2.7 -m pip --version;
# python2.7 -m pip install setuptools wheel;
# SCONS_VERSION=2.5.1; # 2.5.1 best working
# python2.7 -m pip install scons==$SCONS_VERSION protobuf==3.18 pydot graphviz virtualenv; 
# python2.7 -m pip install ipython jinja2 matplotlib natsort pandas pathlib pyelftools progressbar2; # Added for DOLMA

# Set up
cd /code/gem5-docker;
export CORES=$(( `nproc --all` + 1));
python3 `which scons` -j$CORES build/X86/gem5.opt --default=X86 --ignore-style;
echo "Done compiling gem5"
./build/X86/gem5.opt configs/learning_gem5/part1/simple.py # gem5 Hello World!

# Set up revizor
cd /code/revizor-docker;
cd src/x86/isa_spec;
python3 ./get_spec.py --extensions BASE SSE SSE2 CLFLUSHOPT CLFSH;
cd /code;
echo "Done pulling base.json"
# Check that base.json exists in revizor root

echo -e "\nDone post-docker setup! \n";

########################################## Auto run if set ##########################################

# Given some AUTO_RUN_ARG="TEST_CASES=200;INPUTS=70;PARALLEL_INSTANCES=50"
set_benchmark_vars() {
    BENCHMARK_ARGS=$1
    # Check if BENCHMARK_ARGS is set, if not, simply return
    if [[ -z "$BENCHMARK_ARGS" ]]; then
        echo "BENCHMARK_ARGS is not set. Using benchmark_all.sh defaults."
        return
    fi
    # Temporary storage for extracted values
    local test_cases="" inputs="" parallel_instances=""
    # Loop through colon-separated key=value pairs
    IFS=':' read -ra args <<< "$BENCHMARK_ARGS"
    for arg in "${args[@]}"; do
        IFS='=' read -r key value <<< "$arg"

        case "$key" in
            TEST_CASES) test_cases="$value" ;;
            INPUTS) inputs="$value" ;;
            PARALLEL_INSTANCES) parallel_instances="$value" ;;
        esac
    done
    # Check if all three values are set
    if [[ -n "$test_cases" && -n "$inputs" && -n "$parallel_instances" ]]; then
        export TEST_CASES="$test_cases"
        export INPUTS="$inputs"
        export PARALLEL_INSTANCES="$parallel_instances"
    else
        echo "Incomplete BENCHMARK_ARGS provided. Using benchmark_all.sh defaults."
        unset TEST_CASES INPUTS PARALLEL_INSTANCES
        return
    fi
}
set_benchmark_vars "$AUTO_RUN_ARG";

# Check if AUTO_RUN is set (non-empty)
if [[ -n "$AUTO_RUN" ]]; then
    if [[ "${AUTO_RUN,,}" == "fuzz" ]]; then
      echo "Running fuzzer: Check output at: $RVZR_DIR/revizor_run.out";
      $RVZR_RUN &> $RVZR_DIR/revizor_run.out;
    elif [[ "${AUTO_RUN,,}" == "specbench" ]]; then
      echo "Running SPEC benchmarks: Check output at: $GEM5_PERF_ROOT/";
      $SPECBENCH_RUN &> $GEM5_PERF_ROOT/specbench.out;
    elif [[ "${AUTO_RUN,,}" == "benchmark" ]]; then
      echo "Running benchmark: Check output at: $RVZR_DIR/src/logs/bench-SpecLFB.txt and $RVZR_DIR/src/logs/benchmark-out-SpecLFB/";
      $BENCHMARK_SH SpecLFB "$TEST_CASES" "$INPUTS" "$PARALLEL_INSTANCES" &> $RVZR_DIR/bench_sh.out;
    else
      echo "Error: AUTO_RUN must be 'fuzz' or 'benchmark' if set";
      echo "Falling out into shell - Run $RVZR_RUN manually!";
    fi
else
  # Can directly use the environment variables '$RVZR_RUN' and '$BENCHMARK_SH' as well
  echo "Falling out into shell - Run $RVZR_RUN manually!";
fi

# Don't let the session end!
cd /code;
/bin/bash -l;
