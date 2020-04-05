FROM ubuntu:19.10
LABEL description="Builder with Clang."
LABEL version="1.0"

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y \
		build-essential \
		git \
		bzip2 \
		wget \
		clang \
		cmake \
		python3-minimal \
		python3-docopt && \
	apt-get clean

WORKDIR /work
ADD . /work

ENV CC=clang
ENV CXX=clang++
