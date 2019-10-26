FROM ubuntu:latest
RUN apt update && apt install openssh-server -y
COPY ./keys/authorized_keys /root/.ssh/authorized_keys

EXPOSE 22
RUN service ssh start