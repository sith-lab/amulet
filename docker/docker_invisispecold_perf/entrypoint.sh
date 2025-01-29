#!/bin/bash
# Non-interactive script!
# Don't touch the instance until this completes!
 
export GEM5_BRANCH=InvisiSpec-Perf ;
export COMMIT=3508e7558ca0e055410c52964d0de95b48857cc6 ; 

cd /code;
shopt -s dotglob; # Allows removal of dotfiles
rm -rf gem5-docker/*;
shopt -u dotglob;
echo "Done cleaning docker code dirs";

# Clone; CHECK: Specific commit required?
# These will be bound to the container root user; git for these dirs will be unusable by outside observer!!!
git -C /code/gem5-docker clone -b $GEM5_BRANCH git@github.com:mguarnieri/vanilla-gem5-testing-benchmark.git /code/gem5-docker;
cd /code/gem5-docker ; git checkout $COMMIT ; # checkout appropriate branch
sed -i s/output_orig/output_orig_unfixed/ exp_script/run_spec_from_ckpt.sh ;  # change output directory for exps
cd - ;
chmod -R 777 /code/gem5-docker; # Else will not be able to edit contents of code dirs from host side

echo "Done pulling vanilla-gem5-testing-benchmark/$GEM5_BRANCH. Commit:${COMMIT}. out dir: output_orig_unfixed";
 
# Set up Python
apt-get -y install python3-pip 
PIP_VERSION=20.3.4; # 20.3.4 best working
python3 -m ensurepip;
python3 -m pip install unicorn pyyaml types-pyyaml numpy toml iced-x86 protobuf==3.20 pydot; # For revizor; Install on python3.11 !!!
python3 -m pip install --upgrade pip==$PIP_VERSION;
#cp -r /usr/local/lib/python3.11/site-packages/pip /usr/local/lib/python2.7/site-packages;
#cp -r /usr/local/lib/python3.11/site-packages/pip-$PIP_VERSION.dist-info /usr/local/lib/python2.7/site-packages;

## Works for InvisiSpec in Ubuntu 16.04
python2.7 -m ensurepip --upgrade
python2.7 -m pip --version;
python2.7 -m pip install setuptools wheel;
SCONS_VERSION=2.5.1; # 2.5.1 best working
python2.7 -m pip install scons==$SCONS_VERSION protobuf==3.18 pydot graphviz virtualenv; # InvisiSpec
 
# Set up InvisiSpec
cd /code/gem5-docker;
export CORES=$(( `nproc --all` + 1));
python2.7 `which scons` -j$CORES --verbose build/X86_MESI_Two_Level/gem5.opt --default=X86 PROTOCOL=MESI_Two_Level --ignore-style;
echo "Done compiling gem5"
./build/X86_MESI_Two_Level/gem5.opt configs/learning_gem5/part1/simple.py # gem5 Hello World!

# Don't let the session end!
cd /code;
# run workloads
./run_bmarks.sh;
/bin/bash -l;
