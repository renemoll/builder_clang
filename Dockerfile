FROM ubuntu:jammy
LABEL author="René Moll"
LABEL description="Linux container with a Clang-13 build environment."
LABEL version="1.3"

ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
		ca-certificates \
		git \
		clang \
		clang-tidy \
		clang-format \
		cppcheck \
		libstdc++-11-dev \
		make \
		cmake \
		ninja-build \
		python3-minimal \
		python3-docopt && \
	rm -rf /var/lib/apt/lists/* \
	pip install cpplint

WORKDIR /work
ADD . /work

ENV CC=clang
ENV CXX=clang++
