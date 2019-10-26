#!/bin/bash
ssh-keygen -f ./keys/machine_$1_rsa -P "" -q
ssh-add ./keys/machine_$1_rsa
cp ./keys/machine_$1_rsa.pub authorized_keys
docker build -t ubuntu-machine-c$1 .

