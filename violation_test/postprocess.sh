#!/bin/bash
# Wrapper one-click script for auto_batch.sh

export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export DOCKER_DIR=$RVZR_DIR/docker/docker_stt_ipc;
export GEM5_DIR=$CODE_DIR/gem5-docker;
export VIOLATION_TEST_DIR=$RVZR_DIR/violation_test;

postprocess() {
  cd $VIOLATION_TEST_DIR;
  ### Uncomment individually as needed ###
  # Change gem5 debug flags in batch_test.sh!

  RESULTS_NAME=STT-FuturisticSpec-ST-ARCHSEQ;
  # ./batch_test.sh collect_results $RESULTS_NAME;

  # ./auto_batch.sh standard;

  ./auto_batch.sh no_compile;
}
export -f postprocess;
bash -c postprocess &> postprocess.out &
