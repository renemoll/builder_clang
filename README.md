# Docker image for Clang

A docker image with Clang installed.

## How to use

The machine features a `/work/` folder to mount your local volume on.

To enter the machine, open a shell in you project folder an execute (Powershell):
> docker run --rm -it -v ${PWD}:/work/ renemoll/builder_clang:latest /bin/bash
