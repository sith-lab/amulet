# AMuLeT

This is AMuLeT, the Automated Microarchitectural Leak Tester.

AMuLeT is a white-box fuzz testing framework, which uses relational testing to find microarchitectural system leakage. We test a reference architectural simulator ([Unicorn Engine](https://www.unicorn-engine.org/)) against a theoretical microarchitectural defense, typically implemented in the microarchtectural simulator [gem5](https://www.gem5.org/). For any 2 test cases (program + input), if their end state is architecturally equivalent (i.e. registers, data values) but not microarchitecturally equivalent (i.e. cache state, branch predictor tables), then we can determine that this test case causes a microarchitectural leak in the defense.

This work builds upon and is heavily inspired by [Revizor](https://dl.acm.org/doi/10.1145/3503222.3507729)

This is an independently developed and improved fork of [SCA-Fuzzer from Microsoft](https://github.com/microsoft/sca-fuzzer).

# Supported Defenses (by this branch):
- STT (`stt`)

## To patch in a new defense:
- Re-generate a packet_pb2.py with `protoc --proto_path=src --python_out=build/gen src/foo.proto src/bar/baz.proto` on that defense's `packet.proto`.

# Getting Started

**Note:** If you find missing or confusing explanations or a bug, don't hesitate to open an issue.

## Requirements & Dependencies

1. Hardware Requirements

So far, AMuLet supports only the x86 ISA, as both the host and the simulation base.

1. Software Requirements

* Docker

## Installation

# Docker Setup (on Ubuntu 24.04 host):
1. Dependencies - https://docs.docker.com/engine/install/ubuntu/:
```bash
  for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
  sudo apt-get update
  sudo apt-get install ca-certificates curl gnupg libpng-dev libhdf5-dev
  sudo install -m 0755 -d /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  sudo chmod a+r /etc/apt/keyrings/docker.gpg
  echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update
```

2. Install:
```bash 
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

3. Post-Installation Steps (for rootless mode) - https://docs.docker.com/engine/install/linux-postinstall/
```bash
  sudo groupadd docker
  sudo gpasswd -a $USER docker # Will no longer need sudo perms to run docker!
  newgrp docker # Or log out&in
  sudo service docker start
  sudo service --status-all
  docker run hello-world
  export DOCKER_HOST=unix:///var/run/docker.sock
```

## Quick Start

```bash
cd docker;
./dockerRun.sh stt start
docker attach stt
$RVZR_RUN # Inside container (automatically called on container start)
./dockerRun.sh stt stop # To end test container
```

## Docker Flow

Given defense 'stt':
- `dockerRun.sh` calls `stt.Dockerfile` (in `docker_stt`)
- `stt.Dockerfile` calls `entrypoint.sh`
- `entrypoint.sh`:
  - "Borrows" your host system credentials (entire `~/.ssh` dir) to pull `https://github.com/mguarnieri/vanilla-gem5-testing-benchmark/tree/STT-IPC`
  - Calls `revizor_run.sh`

**Please put all your run instantiation code into the respective `docker_<defense>/revizor_run.sh`!**

# Fuzzing Example

- Look into the respective defense subfolder for run examples (i.e. `docker/docker_stt/revizor_run.sh`)

# Command line interface

The fuzzer is controlled via a single command line interface `cli.py` (located in `src/cli.py`). It accepts the following arguments:

* `-s, --instruction-set PATH` - path to the ISA description file
* `-c, --config PATH` - path to the fuzzing configuration file
* `-n , --num-test-cases N` - number of test cases to be tested
* `-i , --num-inputs N` - number of input classes per test case. The number of actual inputs = input classes * inputs_per_class, which is a configuration option
* `-t , --testcase PATH` - use an existing test case instead of generating random test cases

# Development
- Any changes in the revizor-side repo besides `revizor_run.sh` & `optional_run.sh` needs to be pushed (so the container can pull the new updates)
- Any changes at all in the gem5-side repo needs to be pushed
- Only run the container after pushing new updates!

## Git Messages

We practice the following conventions for commit messages:

```
<scope>: [<type>] <subject>
```

Where:

* `<scope>`: The scope of the change.
* `<type>`: The type of the change.
* `<subject>`: A short description of the change.


### Scopes

The following scopes are typical:


| Scope       | Description                                                      |
| ----------- | ---------------------------------------------------------------- |
| `all`       | Changes that affect the entire project (e.g., major refactoring) |
| `docker`    | Docker config changes                                            |
| `root`      | Root directory changes (e.g., readme, git, author list)          |
| `fuzz`      | Changes to the core fuzzer algorithm.                            |
| `cli`       | Changes to the command-line interface.                           |
| `exec`      | Changes to the executor.                                         |
| `model`     | Changes to the model.                                            |
| `analyser`  | Changes to the analyser.                                         |
| `mini`      | Changes to the postprocessor (i.e., minimizer).                  |
| `gen`       | Changes to the program generator                                 |
| `input_gen` | Changes to the input generator                                   |
| `tests`     | Changes to the tests                                             |
| `isa`       | Changes to the ISA loader or to `get_spec` files                 |

If a commit covers several scopes, use the most relevant one.

If a commit targets a specific architecture (e.g., x86), add the architecture to the scope (e.g., `fuzz/x86`).

### Types

Use one of the following types:

| Type     | Description                                                                   |
| -------- | ----------------------------------------------------------------------------- |
| `feat`   | A new feature.                                                                |
| `fix`    | A bug fix.                                                                    |
| `docs`   | Documentation changes.                                                        |
| `chore`  | Changes to the build process or auxiliary tools.                              |
| `ft`     | Fault tolerance changes (e.g., adding error handling or recovery mechanisms). |
| `refact` | Refactoring of the codebase. This includes code style change.                 |
| `perf`   | Performance improvements.                                                     |
| `revert` | Reverts a previous commit.                                                    |

# Documentation

**TODO**
