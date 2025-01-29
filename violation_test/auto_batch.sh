# Automatically run one batch after another!

export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export DOCKER_DIR=$RVZR_DIR/docker/docker_stt_ipc;
export GEM5_DIR=$CODE_DIR/gem5-docker;
export VIOLATION_TEST_DIR=$RVZR_DIR/violation_test;

auto_batch() { # Assuming cwd is $VIOLATION_TEST_DIR
  # Manual: Copy result findings from $RVZR_DIR/src/results into $VIOLATION_TEST_DIR/fuzz_results
  # Required for clean repeated run; Clean before processing!
  rm -rf analysis_results out __pycache__; 

  # # Run - STT USBL
  # echo "Running STT USBL";
  # ./batch_test.sh run UnsafeBaseline;
  # rm -rf analysis_results_STT-UnsafeBaseline;
  # mv analysis_results analysis_results_STT-UnsafeBaseline;

  # Run - STT Spectre
  # echo "Running STT Spectre";
  # ./batch_test.sh run Spectre;
  # rm -rf analysis_results_STT-Spectre;
  # mv analysis_results analysis_results_STT-Spectre;

  # Run - STT Futuristic
  echo "Running STT Futuristic";
  ./batch_test.sh run Futuristic;
  rm -rf analysis_results_STT-Futuristic;
  mv analysis_results analysis_results_STT-Futuristic;

  rm -rf out __pycache__; # Unsightly cleanup
}
export -f auto_batch;

echo "Running multiple batches";
cd $VIOLATION_TEST_DIR;

main() {
  ARG=$1 # Set initial state

  cd $VIOLATION_TEST_DIR;
  case $ARG in
    "standard")
      ./batch_test.sh compile_gem5
      auto_batch;
    ;;

    "no_compile")
      auto_batch;
    ;;

    *)
      echo "Error: No arguments given!";
      echo """
        **Using violation_test/batch_test.sh**

        Usage:
        ./auto_batch.sh standard
          - Recompile gem5, parallel, both STT and USBL 
        ./auto_batch.sh no_compile
          - No recompile, parallel, both STT and USBL

        Prerequiste:
          - Input runs in violation_test/fuzz_results_raw

        Output: 
          - Run results in violation_test/test_results_*

      """
    ;;
  esac
}

main "$@";
echo "Done running multiple batches";