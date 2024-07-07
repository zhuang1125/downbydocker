FROM ubuntu:latest

#注意，换行用TAB

RUN apt-get update \
    && apt-get install -y vim \
    && apt-get install -y tree \
    && apt-get install -y net-tools \
   # && apt-get install -y git \
   # && apt-get install -y python3 \
   # && apt-get install -y python3-pip  \
   # && apt install -y mysql-client
   && apt install -y  telnet curl wget
# RUN mkdir /data && cd /data && wget https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe -O DockerDesktopInstaller.exe
