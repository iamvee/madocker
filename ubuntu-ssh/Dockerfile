FROM ubuntu:latest
RUN apt update && apt install openssh-server
RUN systemctl start ssh
COPY ./keys/authorized_keys /root/.ssh
EXPOSE 22
