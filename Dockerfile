FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y software-properties-common debconf-utils

RUN add-apt-repository -y ppa:webupd8team/java

RUN apt-get update

RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections

RUN apt-get install -y oracle-java8-installer

RUN apt-get install -y wget \
    protobuf-compiler \
    maven \
    cmake \
    g++ \
    gcc \
    build-essential \
    pkg-config \
    libssl-dev \
    zlib1g-dev \
    automake \
    autoconf \
    make

RUN cd /tmp \
    && wget https://github.com/google/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.bz2 \
    && tar xfvj protobuf-2.5.0.tar.bz2 \
    && cd protobuf-2.5.0 \
    && ./configure --prefix=/usr --disable-shared \
    && make && make install
    
COPY download.sh /root/download.sh
COPY build.sh    /root/build.sh
COPY install.sh  /root/install.sh
COPY clean.sh    /root/clean.sh

RUN chmod +x     /root/download.sh
RUN chmod +x     /root/build.sh
RUN chmod +x     /root/install.sh
RUN chmod +x     /root/clean.sh    
