#!/bin/bash
export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export GEM5_DIR=$CODE_DIR/gem5-docker;
export DBG_DIR=$CODE_DIR/dbg;

# Run:
# /code/revizor-docker/docker/docker_speclfb/scripts/speclfb_run.sh

# Kill all previous runs:
# kill $(pidof python3)

# Compile: 
# rm -rf $GEM5_DIR/build;
cd /code/gem5-docker && python3 `which scons` -j$(nproc) build/X86/gem5.opt --default=X86 --ignore-style --debug=explain 

cd $RVZR_DIR/src;

# TODO: For every violation in dbg/speclfb_ct-seq/results/, run 10 instance of revizor with that test case's 'test_case_rvzr_input1.asm'
# Can't run same asm in parallel, will cause issues. Keep ipc_parallelism: 1 in test yamls

# Re-run ct-seq violations (in ct-seq)
VIOL_DIR=$CODE_DIR/dbg/leo_speclfb_ctseq;
mkdir -p rerun-logs; # In src dir is still best
for violation in $VIOL_DIR/results/* ; do
  echo "Processing $violation";
  if [ -d "$violation" ]; then
    testcase=$violation/test_case_rvzr_input1.asm
    base_vio=$(basename $violation)
    python3 ./cli.py fuzz -s x86/isa_spec/base.json --SpecLFB -i 70 -t $testcase -c ../docker/docker_speclfb/yamls/ct-seq.yaml -p ctseq-$base_vio \
    &> rerun-logs/ctseq-$base_vio.txt &
  else
    echo "Skipping $violation";
  fi
done


# Run ct-seq violations in arch-seq
# VIOL_DIR=$CODE_DIR/dbg/speclfb_ct-seq_postAFfix;
# mkdir -p rerun-logs; # In src dir is still best
# for violation in $VIOL_DIR/results/* ; do
#   echo "Processing $violation";
#   if [ -d "$violation" ]; then
#     testcase=$violation/test_case_rvzr_input1.asm
#     base_vio=$(basename $violation)
#     python3 ./cli.py fuzz -s x86/isa_spec/base.json --SpecLFB -i 70 -t $testcase -c ../docker/docker_speclfb/yamls/arch-seq.yaml -p archseq-$base_vio \
#     &> rerun-logs/archseq-$base_vio.txt &
#   else
#     echo "Skipping $violation";
#   fi
# done

# # Re-run ct-seq violations which were filtered out in arch-seq on the patched version of SpecLFB
# # Get filtered_vios.txt from running scripts/disappeared_vios.py within dbg/speclfb_ct-seq_postAFfix/arch-seq/rerun-logs
# cd /code/gem5-docker && python3 `which scons` -j$(nproc) build/X86/gem5.opt --default=X86 --ignore-style --debug=explain; cd $RVZR_DIR/src;
# VIOL_DIR=$CODE_DIR/dbg/speclfb_ct-seq_postAFfix;
# mkdir -p rerun-logs; # In src dir is still best
# while IFS= read -r vio; do
#     # if [ -d "$line" ]; then
#     #     echo "$line"
#     # fi
#     violation=$VIOL_DIR/results/$vio;
#     echo "Processing $violation";
#     if [ -d "$violation" ]; then
#       testcase=$violation/test_case_rvzr_input1.asm
#       base_vio=$(basename $violation)
#       python3 ./cli.py fuzz -s x86/isa_spec/base.json --SpecLFB -i 70 -t $testcase -c ../docker/docker_speclfb/yamls/ct-seq.yaml -p ctseq_patched-$base_vio \
#       &> rerun-logs/ctseq_patched-$base_vio.txt &
#     else
#       echo "Skipping $violation";
#     fi
# done < $VIOL_DIR/filtered_vios.txt


# # Run ct-seq violations in ct-cond
# VIOL_DIR=$CODE_DIR/dbg/speclfb_ct-seq_postAFfix;
# mkdir -p rerun-logs; # In src dir is still best
# for violation in $VIOL_DIR/results/* ; do
#   echo "Processing $violation";
#   if [ -d "$violation" ]; then
#     testcase=$violation/test_case_rvzr_input1.asm
#     base_vio=$(basename $violation)
#     python3 ./cli.py fuzz -s x86/isa_spec/base.json --SpecLFB -i 70 -t $testcase -c ../docker/docker_speclfb/yamls/ct-cond.yaml -p ctcond-$base_vio \
#     &> rerun-logs/ctcond-$base_vio.txt &
#   else
#     echo "Skipping $violation";
#   fi
# done

# # Run ct-seq violations also found under arch-seq in ct-cond
# VIOL_DIR=$CODE_DIR/dbg/speclfb_ct-seq_postAFfix/arch-seq;
# mkdir -p rerun-logs; # In src dir is still best
# for violation in $VIOL_DIR/results/* ; do
#   echo "Processing $violation";
#   if [ -d "$violation" ]; then
#     testcase=$violation/test_case_rvzr_input1.asm
#     base_vio=$(basename $violation)
#     python3 ./cli.py fuzz -s x86/isa_spec/base.json --SpecLFB -i 70 -t $testcase -c ../docker/docker_speclfb/yamls/ct-cond.yaml -p ctcond-$base_vio \
#     &> rerun-logs/ctcond-$base_vio.txt &
#   else
#     echo "Skipping $violation";
#   fi
# done

# Run ct-seq violations also found under ct-cond in arch-seq
# VIOL_DIR=$CODE_DIR/dbg/speclfb_ct-seq_postAFfix/ct-cond;
# mkdir -p rerun-logs; # In src dir is still best
# for violation in $VIOL_DIR/results/* ; do
#   echo "Processing $violation";
#   if [ -d "$violation" ]; then
#     testcase=$violation/test_case_rvzr_input1.asm
#     base_vio=$(basename $violation)
#     python3 ./cli.py fuzz -s x86/isa_spec/base.json --SpecLFB -i 70 -t $testcase -c ../docker/docker_speclfb/yamls/arch-seq.yaml -p archseq-$base_vio \
#     &> rerun-logs/archseq-$base_vio.txt &
#   else
#     echo "Skipping $violation";
#   fi
# done

############################################################################################################

# ls -l | grep '^d' | wc -l

# TODO check for "Fuzzer finished without finding violations" in rerun-logs/archseq-$base_vio.txt
# Return the filenames of those with no violations found; These are the ct-seq violations that do NOT violate arch-seq
# Filenames of violations in results/* do NOT correlate to the filenames of the rerun-logs/*.txt!

# REF=cleanupspec-reference;
# ACTUAL=cleanupspec-ipc-reference;
# git diff --stat $REF $ACTUAL > diff_$ACTUAL.txt
# git diff --name-only $REF $ACTUAL > diff_$ACTUAL.txt
# git diff --stat $REF $ACTUAL | grep '|' | awk -F '|' '{print $2}' | awk '{print $1}' | tr -d '+-' | paste -sd '\n' > diff_$ACTUAL.txt
