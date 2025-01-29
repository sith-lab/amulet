#!/bin/bash
# Check current state of yamls before running to be sure!
export CODE_DIR=/code;
export RVZR_DIR=$CODE_DIR/revizor-docker;
export DOCKER_DIR=$RVZR_DIR/docker/docker_stt_ipc; # Contains yamls!
export GEM5_DIR=$CODE_DIR/gem5-docker;
export VIOLATION_TEST_DIR=$RVZR_DIR/violation_test;

export ANALYSIS_SCRIPT=$RVZR_DIR/src/analyse_ipc_violation.py; # Dependency!
export TESTS_SRC=$VIOLATION_TEST_DIR/fuzz_results;
export COLLECT_DEST=$VIOLATION_TEST_DIR/collected_results;
export ANALYSIS_DIR=$VIOLATION_TEST_DIR/analysis_results;
export ISA_PATH=$RVZR_DIR/src/x86/isa_spec/base.json;
export DEFENSE="STT"; 
export DEFAULT_SCHEME=""; # UnsafeBaseline, FuturisticSpec (default "" for Spectre)

### Current Run Config ###

# Revizor priming flags: "Squashed,DRAM,CommMonitor,O3CPUAll,ExecAll,Branch,ROB,MemoryAccess,MemDepUnit,RubyCache,LSQ,LSQUnit,Fetch,Decode,RubySlicc,RubyPort,RubySequencer,RubyQueue,RubyNetwork,CacheAccess,IEW"
# General Debug Flags: "Squashed,ROB,LSQ,LSQUnit,MemDepUnit,Branch,Fetch,IQ,TLB,Commit"
# L1I debug flags: "Squashed,Fetch,IQ,RubyCache"
# Ruby debug flags: "Squashed,LSQ,LSQUnit,RubySequencer,Fetch"
# MESI debug flag: "ProtocolTrace"
# Exec debug flag (no spec exec!): "ExecAll"
# Must at least have "Squashed" for timing traces!!!
export GEM5_DEBUG_FLAGS="Squashed,ROB,LSQ,LSQUnit,MemDepUnit,Branch,Fetch,IQ,TLB,Commit";

### Example usages of Revizor with IPC orchestration ###
# Run violation analysis script on the violation:
#   python3.11 analyse_ipc_violation.py results/Xhrs-Ymins-Zsecs/ --args "-s x86/isa_spec/base.json --ruby --STT -i 10 -n 1 -c $ST_ARCHSEQ_YAML"
# This should give you the instruction which caused the violation
######

#########


main() {
  ARG=$1 # Set initial state

  cd $VIOLATION_TEST_DIR;
  case $ARG in
    "compile_gem5")
      cd $GEM5_DIR;
      export CORES=$(( `nproc --all` + 1));
      python2.7 `which scons` -j${CORES} --verbose build/X86/gem5.opt --default=X86 PROTOCOL=MESI_Two_Level --ignore-style
    ;;

    "collect_results")
      RESULTS_NAME=$2;
      echo "Collecting fuzzing results as $RESULTS_NAME";
      
      cd $RVZR_DIR/src;
      RVZR_RESULTS_DIR="results"; # In case it ever changes
      # If exists and is non-empty
      if [ -d "$RVZR_RESULTS_DIR" ] && [ -n "$(ls -A "$RVZR_RESULTS_DIR")" ]; then
          tar -czvf $RESULTS_NAME.tar.gz $RVZR_RESULTS_DIR;
          mv -v $RESULTS_NAME.tar.gz $COLLECT_DEST;
      else
        echo "Error: gem5zor results dir not found or empty!";
        exit 1;
      fi;
      echo "Done collecting fuzzing results to $COLLECT_DEST/$RESULTS_NAME";
    ;;

    "run")
      SCHEME=${2:-$DEFAULT_SCHEME};

      RVZR_SCHEME="";
      if [[ "$SCHEME" == "UnsafeBaseline" ]]; then
        RVZR_SCHEME="--"$DEFENSE"_UnsafeBaseline";
      elif [[ "$SCHEME" == "Futuristic" ]]; then
        RVZR_SCHEME="--"$DEFENSE"_FuturisticSpec";
      fi; # Else leave blank for default "Spectre" scheme
  
      echo "Running all tests in $TESTS_SRC";

      cd $TESTS_SRC;
      for TEST_DIR in */ ; do
        DIR_NAME="$(basename "$TEST_DIR")"
        echo -e "\nRunning tests in $DIR_NAME";

        # Check if the element is neither a directory nor a file named "pass"
        if [ ! -d "$TEST_DIR" ] && [ $DIR_NAME != "pass" ]; then
          echo "Error: Unrecognized file $TEST_DIR in $TESTS_SRC";
          exit 1;
        fi;

        CURR_DIR_PATH=$TESTS_SRC/$DIR_NAME;
        CURR_YAML_PATH=$TESTS_SRC/$DIR_NAME/configuration.yaml;
        cd $RVZR_DIR/src; # gem5zor will run correctly is $PWD is unexpected
        python3.11 analyse_ipc_violation.py $CURR_DIR_PATH --analysis-dir $ANALYSIS_DIR/$DIR_NAME --args "-s $ISA_PATH --ruby --STT $RVZR_SCHEME -i 10 -n 1 -c $CURR_YAML_PATH";

        # Run debug & violation results should be in $VIOLATION_TEST_DIR/analysis_results
        echo -e "Done running for $DIR_NAME\n";
      done;

      echo "Done running tests"
    ;;

    *)
      echo "Error: No arguments given!";
      echo """
        **Using Revizor!**

        Usage:
        ./batch_test.sh compile_gem5

        ./batch_test.sh collect_results <RESULTS_NAME>
          - Extracts gem5zor total run results into violation_test/collected_results/<RESULTS_NAME>

        ./batch_test.sh run <scheme=$DEFAULT_SCHEME>
          - Runs all asms in violation_test/fuzz_results using gem5zor and puts results into violation_test/analysis_results

        - violation_test/fuzz_results should have dir format: 123hrs-45mins-54secs

        Output: 
        gem5zor test results moved into violation_results/analysis_results for each run in fuzz_results
        (Wiped on every new run!)
      """
    ;;
  esac
}

main "$@"