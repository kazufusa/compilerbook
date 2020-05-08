FROM ubuntu:latest
RUN DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq \
  && apt-get install -y tzdata \
  && apt-get install -y gcc make git binutils libc6-dev gdb sudo \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
RUN adduser --disabled-password --gecos '' user
RUN echo 'user ALL=(root) NOPASSWD:ALL' > /etc/sudoers.d/user
USER user
WORKDIR /home/user
