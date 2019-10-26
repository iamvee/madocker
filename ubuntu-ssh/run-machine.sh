#!/bin/bash
#docker run -d -P -ti    ubuntu-machine-c$1

docker run -d -P -p 2022:22 -ti --name test-ubuntu-machine-c$1 ubuntu-machine-c$1

