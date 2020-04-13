FROM ubuntu:19.10
LABEL description="Builder with Clang."
LABEL version="1.1"

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
		ca-certificates \
		git \
		clang \
		make \
		cmake \
		python3-minimal \
		python3-docopt && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /work
ADD . /work

ENV CC=clang
ENV CXX=clang++
