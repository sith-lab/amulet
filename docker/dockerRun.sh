#!/bin/bash
shopt -s extglob; # Extended pattern matching

export DOCKER_ROOT=$PWD;
echo "DOCKER_ROOT is: $DOCKER_ROOT";

# directories needed for gem5 performance exps.
export GEM5_PERF_ROOT=$DOCKER_ROOT/../../gem5_perf # ckpt/results directory
export BMARKS_ROOT=/scratch/gururaj/bench_inst # benchmarks

# lowercase only!
export SUPPORTED_DEFENSES=(
  "invisispec"
  "cleanupspec"
  "stt"
  "dolma"
  "speclfb"
  # "invisispec_perf"
  # "cleanupspec_perf"
  # "stt_perf"
)
# Format SUPPORTED_DEFENSES into ""DefenseA"|"DefenseB"|"DefenseC"|..."
SD_CASE_PATTERN="@($(
  arraylength=${#SUPPORTED_DEFENSES[@]}
  for (( i=0; i<${arraylength}; i++ )); do
    if (( i > 0 )); then
      echo -n "|";
    fi;
    echo -n "${SUPPORTED_DEFENSES[$i]}";
  done;
))"; 

print_help() {
  echo """
    Supported Defenses:
    $(
      arraylength=${#SUPPORTED_DEFENSES[@]}
      for (( i=0; i<${arraylength}; i++ ));
      do
        echo -e "\t\"${SUPPORTED_DEFENSES[$i]}\""
      done
    )

    Usage:
    ./dockerRun.sh <DEFENSE> start [AUTO_RUN];
      - Start a docker container for the given defense
      - Optional: AUTO_RUN=(fuzz|benchmark|uarch_trace_formats|smaller_uarch_structures) to start script upon container launch
    ./dockerRun.sh <DEFENSE> stop;
      - Stop and prune all docker containers for the given defense
    ./dockerRun.sh killall;
      - Stop and prune all active images and containers, as well as clear the image build cache
    ./dockerRun.sh restart_docker
      - Restarts the underlying docker service. Use if docker becomes unresponsive!

    Examples:
      ./dockerRun.sh invisispec start fuzz;
      ./dockerRun.sh list;
      ./dockerRun.sh invisispec stop;

    Debug commands:
      ./dockerRun grab_ssh;
        - Only copy over and test ssh credentials
      ./dockerRun.sh list;
        - List active images and containers
      ./dockerRun.sh help;

    Debug Notes: 
    - Try running \"newgrp docker\" first
    - Start docker with \"sudo service docker start\"
  """
}

main() {
  ARG=$1;
  case $ARG in
    $SD_CASE_PATTERN)
      DEFENSE=$1; # Should only ever be ONE defense!
      ACTION=$2;
      AUTO_RUN=$3;
      AUTO_RUN_ARG=$4;

      # Only check if AUTO_RUN is non-empty
      if [[ -n "$AUTO_RUN" ]]; then
          # Convert to lowercase for case-insensitive comparison
          if [[ "${AUTO_RUN,,}" == "uarch_trace_formats" || "${AUTO_RUN,,}" == "smaller_uarch_structures" ]]; then
              if [[ "$DEFENSE" != "invisispec" ]]; then
                  echo "Error: 'uarch_trace_formats' and 'smaller_uarch_structures' are only supported on InvisiSpec." >&2
                  exit 1;
              fi
          elif [[ "${AUTO_RUN,,}" != "fuzz" && "${AUTO_RUN,,}" != "benchmark" ]]; then
              echo "Error: AUTO_RUN must be 'fuzz' or 'benchmark' if set" >&2
              print_help;
              exit 1;
          fi
          echo "AUTO_RUN is set to $AUTO_RUN, AUTO_RUN_ARG is set to $AUTO_RUN_ARG";
      else
          echo "AUTO_RUN is not set. Will not start any scripts upon container launch.";
      fi

      if [ -z "$ACTION" ]; then
        echo "Error: No action specified. Should we \"start\" or \"stop\" the defense container?";
        print_help;
      elif [ "$ACTION" == "start" ]; then
        cp $HOME/.gitconfig $DOCKER_ROOT/utils/.gitconfig || touch $DOCKER_ROOT/utils/.gitconfig;
        if [ "$CLONE_WITH_SSH" != '' ]; then
          grab_ssh; # utils folder should now be ready to copy
        fi
        # Assumes defense specific Dockerfiles are in $DOCKER_ROOT/docker_$DEFENSE
        export CONTAINER_NAME=$DEFENSE;
        export TAG_NAME=$DEFENSE;
        export DEFENSE_ROOT=$DOCKER_ROOT/docker_$DEFENSE;
        if [ ! -d $DEFENSE_ROOT ]; then
          echo "Abort: Docker root folder $DEFENSE_ROOT for defense $DEFENSE does not exist!";
          exit 1;
        fi;
        
        echo "Setting up ephemeral folder structure";
        cd $DEFENSE_ROOT;
        echo "Copying utils into $DEFENSE_ROOT";
        rm -rf utils; # Don't keep anything
        cp -vr $DOCKER_ROOT/utils $DEFENSE_ROOT/utils;
        echo "Making ephemeral docker dirs";
        mkdir -p gem5-docker; # Will be wiped upon every launch!
        mkdir -p revizor-docker;
        mkdir -p dbg;

        if [[ $DEFENSE == *_perf* ]]; then
          mkdir -p $GEM5_PERF_ROOT
          echo "Directory created: $GEM5_PERF_ROOT "
        fi
          echo "Building docker image";
          echo "Docker build context root: $DEFENSE_ROOT";
          docker build -t "$TAG_NAME" -f $DEFENSE_ROOT/$DEFENSE.Dockerfile $DEFENSE_ROOT;
          echo "Image built for tag $TAG_NAME. List of current built images:";
          docker image ls;
          echo "";
          echo "Running docker image";

        if [[ $DEFENSE == *_perf* ]]; then
          docker run -d \
          -e AUTO_RUN=$AUTO_RUN \
          -e AUTO_RUN_ARG=$AUTO_RUN_ARG \
          -e CLONE_WITH_SSH=$CLONE_WITH_SSH \
          --name $CONTAINER_NAME \
          --volume $DEFENSE_ROOT/gem5-docker:/code/gem5-docker \
          --volume $DEFENSE_ROOT/revizor-docker:/code/revizor-docker \
          --volume $DEFENSE_ROOT/dbg:/code/dbg \
          --volume $GEM5_PERF_ROOT:/code/gem5_perf \
          --volume $BMARKS_ROOT:/code/bmarks \
          --rm -it $CONTAINER_NAME;
        else
          docker run -d \
          -e AUTO_RUN=$AUTO_RUN \
          -e AUTO_RUN_ARG=$AUTO_RUN_ARG \
          -e CLONE_WITH_SSH=$CLONE_WITH_SSH \
          --name $CONTAINER_NAME \
          --volume $DEFENSE_ROOT/gem5-docker:/code/gem5-docker \
          --volume $DEFENSE_ROOT/revizor-docker:/code/revizor-docker \
          --volume $DEFENSE_ROOT/dbg:/code/dbg \
          --rm -it $CONTAINER_NAME;
        fi

        # INFO: Can remove --rm flag to persist filesystem if de-coupling linked volumes
        #   -Can diff/export contents of stopped container after run completes to check results! (Or re-image into new container running a shell)
        # Dockerfile will run CMD entrypoint.sh here
        echo "Docker run completed. List of current running containers:";
        docker container ls;
        echo "";
        export CONTAINER_ID=$(docker container ls --all --quiet --filter "name=$CONTAINER_NAME");
        echo "Container launched! ID: $CONTAINER_ID";
        echo "Code in container is within \"/code\"";
        echo "Attach with \"docker attach $CONTAINER_NAME\"";
        echo "Stop with \"docker rm --force $CONTAINER_NAME\" (or exit from within container!)";
        echo "Debug: Try running \"newgrp docker\" first!";
        echo "Debug: Start docker with \"sudo service docker start\"!";
      elif [ "$ACTION" == "stop" ]; then
        echo "Stopping all listed containers for defense $DEFENSE:";
        docker ps --filter ancestor=$DEFENSE;
        docker stop $(docker ps --filter ancestor=$DEFENSE -q); 
        echo "Pruning docker system"
        docker system prune -f;
        echo "Stopped and pruned all containers for defense $DEFENSE";
      else
        echo "Error: Unrecognized action $ACTION";
        print_help;
      fi;
    ;;

    "killall")
      echo "Stopping all running containers";
      docker stop $(docker ps -a -q);
      echo "Pruning all cached images";
      docker system prune -f -a --volumes;
      echo "All docker containes and images cleared";
    ;;

    "restart_docker")
      echo "Restarting docker.service in user mode"
      systemctl --user stop docker.service;
      systemctl --user start docker.service;
      echo "docker.service restarted!"
    ;;

    "list")
      echo "List of currently built images:";
      docker images;
      echo "List of all containers:"
      docker ps -a;
    ;;

    "grab_ssh")
      echo "Only grabbing ssh credentials!";
      grab_ssh;
    ;;

    "help")
      print_help;
    ;;

    *)
      echo "Error: No arguments specified";
      print_help;
    ;;

  esac
}


grab_ssh() {
  # Grab .ssh; Must be done in pre-build script here
  cd $DOCKER_ROOT/utils;
  mkdir -p ssh;
  echo "Grabbing private key from $HOME/.ssh";
  shopt -s dotglob; # Allows removal of dotfiles
  rm -rf $DOCKER_ROOT/utils/ssh/*;
  shopt -u dotglob;
  cp -vr $HOME/.ssh/. $DOCKER_ROOT/utils/ssh;

  echo "Testing Public/Private key pair";
  cd $DOCKER_ROOT/utils/ssh;
  PRIV_KEY=$(ls id*[^.pub]);
  PUB_KEY=$(ls id*.pub);
  DIFF=$(diff <( ssh-keygen -y -e -f "$PRIV_KEY" ) <( ssh-keygen -y -e -f "$PUB_KEY" ))
  if [ "$DIFF" != "" ]; then
    echo "Private Key: $PRIV_KEY, Public Key: $PUB_KEY";
    echo "Contents of $DOCKER_ROOT/utils/ssh:";
    ls -al;
    exit "Abort: Public/Private Key Mismatch. Check contents of $HOME/.ssh on host!";
  fi;
  echo "Public/Private keys match!";
  cd $DOCKER_ROOT
}


main "$@";
