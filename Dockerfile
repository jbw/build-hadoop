FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y openjdk-8-jdk

RUN apt-get install -y wget\
    libprotobuf-dev \
    protobuf-compiler \
    maven \
    cmake \
    build-essential \
    pkg-config \
    libssl-dev \
    zlib1g-dev \
    automake \
    autoconf \
    make

COPY download.sh /root/download.sh
COPY build.sh    /root/build.sh
COPY install.sh  /root/install.sh
COPY clean.sh    /root/clean.sh

RUN chmod +x /root/download.sh
RUN chmod +x /root/build.sh
RUN chmod +x /root/install.sh
RUN chmod +x /root/clean.sh    