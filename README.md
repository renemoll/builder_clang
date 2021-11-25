# Docker image with Clang

A docker image with a Clang build environment.

## How to use the image

The machine features a `/work/` folder to mount your local volume on.

To enter the machine, open a shell in you project folder an execute (Powershell):
> docker run --rm -it -v ${PWD}:/work/ renemoll/builder_clang:latest /bin/bash

## How to build the image

* Checkout this repository
* Execute the following command:
> docker build -t renemoll/builder_clang .
