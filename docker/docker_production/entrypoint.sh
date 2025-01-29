#!/bin/bash
# Non-interactive script!
# Don't touch the instance until this completes!

export GEM5_BRANCH=checkpoint;
export RVZR_BRANCH=violation-finder;

cd /code;
shopt -s dotglob; # Allows removal of dotfiles
rm -rf gem5-docker/*;
rm -rf revizor-docker/*;
shopt -u dotglob;
echo "Done cleaning docker code dirs";

# Clone; CHECK: Specific commit required?
# These will be bound to the container root user; git for these dirs will be unusable by outside observer!!!
git -C /code/gem5-docker clone -b $GEM5_BRANCH git@github.com:mguarnieri/vanilla-gem5-testing-benchmark.git /code/gem5-docker
echo "Done pulling vanilla-gem5-testing-benchmark/checkpoint";
git -C /code/revizor-docker clone -b $RVZR_BRANCH git@github.com:mguarnieri/revizor-gem5.git /code/revizor-docker
echo "Done pulling revizor-gem5/violation-finder";

# Set up gem5
cd /code/gem5-docker;
export CORES=$(( `nproc --all` + 1));
python3 `which scons` -j$CORES --verbose build/X86/gem5.opt --default=X86 PROTOCOL=MESI_Two_Level --ignore-style;
echo "Done compiling gem5"
# Check with ./build/X86/gem5.opt

# Set up revizor
cd /code/revizor-docker;
cd src/x86/isa_spec;
./get_spec.py --extensions BASE SSE SSE2 CLFLUSHOPT CLFSH;
cd /code;
echo "Done pulling base.json"
# Check that base.json exists in revizor root

# Run revizor
echo -e "\nDone post-docker setup! \n";
echo "Running fuzzer: Check output at: /code/revizor-docker/revizor_run.out";
/code/revizor_run.sh &> /code/revizor-docker/revizor_run.out;

# Don't let the session end!
cd /code;
/bin/bash -l;
