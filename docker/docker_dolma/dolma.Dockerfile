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

FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

# Set up root
User root
WORKDIR /code
COPY utils/bashrc /root/.bashrc
COPY utils/vimrc /root/.vimrc

# Set up git for root
# Warning - copying local private key: Ensure image is ephemeral!
COPY utils/ssh /root/.ssh

# Install; Commands will be run under sudo
RUN apt-get -y update && apt-get -y upgrade && \
    apt-get -y install build-essential checkinstall git m4 zlib1g zlib1g-dev \
    libprotobuf-dev protobuf-compiler libprotoc-dev libgoogle-perftools-dev \
    doxygen libboost-all-dev libhdf5-serial-dev \
    libpng-dev libelf-dev pkg-config libffi-dev \
    libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev \
    tk-dev libgdbm-dev libc6-dev libbz2-dev \
    vim wget software-properties-common \
    graphviz python3-pydot gdb \
    emacs \
    bison libprotobuf-dev python3-six python-is-python3 \
    python2-dev
    # Added for DOLMA

# Install our our Python versions
RUN wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz && tar xzf Python-2.7.18.tgz
RUN cd /code/Python-2.7.18 && ./configure --enable-optimizations && make altinstall
RUN wget https://www.python.org/ftp/python/3.11.4/Python-3.11.4.tgz && tar xzf Python-3.11.4.tgz
RUN cd /code/Python-3.11.4 && ./configure --enable-optimizations && make altinstall

# Must be gcc-7 (7.5.0) for older gem5 versions (implicit copy-constructor error)
RUN apt-get -y install gcc-7 g++-7
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 100
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 100
RUN update-alternatives --config gcc

# Copy over tools
COPY --chmod=775 entrypoint.sh /code/entrypoint.sh
# Grab the rest directly from revizor-docker/docker/docker_<defense>/..

# Run startup script
CMD /code/entrypoint.sh;