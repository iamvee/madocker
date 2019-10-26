#!/bin/bash
export UBUNTU_DOCKER_KEY="./keys/machine_${1}_rsa"
rm ${UBUNTU_DOCKER_KEY}*

ssh-keygen -f ${UBUNTU_DOCKER_KEY} -P "" 
ssh-keygen -f "/root/.ssh/known_hosts" -R "[localhost]:2022"
ssh-add ${UBUNTU_DOCKER_KEY}


cp ${UBUNTU_DOCKER_KEY}.pub ./keys/authorized_keys
docker kill test-ubuntu-machine-c$1
docker container rm test-ubuntu-machine-c$1
docker image rm f ubuntu-machine-c$1
docker build -t ubuntu-machine-c$1 . 

