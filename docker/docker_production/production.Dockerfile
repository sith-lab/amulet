# Copyright (c) 2022 The Regents of the University of California
# All Rights Reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met: redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer;
# redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution;
# neither the name of the copyright holders nor the names of its
# contributors may be used to endorse or promote products derived from
# this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

# Install; Commands will be run under sudo
RUN apt-get -y update && apt-get -y upgrade && \
    apt-get -y install build-essential git m4 scons zlib1g zlib1g-dev \
    libprotobuf-dev protobuf-compiler libprotoc-dev libgoogle-perftools-dev \
    python3-dev doxygen libboost-all-dev libhdf5-serial-dev python3-pydot \
    libpng-dev libelf-dev pkg-config pip python3-venv black \
    vim wget
RUN pip install mypy pre-commit
RUN pip install scons protobuf==3.20
RUN pip install unicorn pyyaml types-pyyaml numpy iced-x86 toml graphviz

# Set up root
User root
WORKDIR /code
COPY utils/bashrc /root/.bashrc
COPY utils/vimrc /root/.vimrc

# Set up git for root
# Warning - copying local private key: Ensure image is ephemeral!
COPY utils/ssh /root/.ssh
COPY utils/.gitconfig /root/.gitconfig

# Copy over tools
COPY --chmod=775 entrypoint.sh /code/entrypoint.sh
COPY --chmod=777 revizor_run.sh /code/revizor_run.sh
COPY docker_gem5_v1.yaml /code/docker_gem5_v1.yaml

# Run startup script
CMD /code/entrypoint.sh;
