FROM ubuntu:latest
LABEL maintainer="maxmilio@kiv.zcu.cz" \
      org.opencontainers.image.source="https://github.com/maxotta/kiv-cicd-golang-devcontainer"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y install curl ; \
    apt-get -y install net-tools ; \
    apt-get -y install iputils-ping ; \
    apt-get -y install dnsutils

RUN apt-get -y install golang
RUN apt-get -y install git


CMD [ "sh", "-c", "while :; do cd; bash -i; echo '==> NOPE ! Exiting the shell would also stop the Docker container! Please close the terminal window instead.'; done" ]
