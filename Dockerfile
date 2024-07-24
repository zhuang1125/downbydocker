FROM ubuntu:latest

#注意，换行用TAB

RUN apt-get update \
    && apt-get install -y vim \
    && apt-get install -y tree \
    && apt-get install -y net-tools \
   # && apt-get install -y git \
   # && apt-get install -y python3 \
   # && apt-get install -y python3-pip  \
   # && apt install -y mysql-client \
   && apt install -y   curl \   
   && apt install -y   telnet  \
   && apt install -y   wget
#RUN mkdir /data && cd /data && wget https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe -O DockerDesktopInstaller.exe
#RUN mkdir /data && cd /data && wget https://ipfs.io/ipfs/bafybeih65no5dklpqfe346wyeiak6wzemv5d7z2ya7nssdgwdz4xrmdu6i/files/jetbra-8f6785eac5e6e7e8b20e6174dd28bb19d8da7550.zip -O jetbra.zip
RUN  mkdir /data && cd /data && wget https://download.microsoft.com/download/4/3/B/43B61315-B2CE-4F5B-9E32-34CCA07B2F0E/NDP452-KB2901951-x86-x64-DevPack.exe -O 1.exe && wget https://go.microsoft.com/fwlink/?linkid=397673&clcid=0x409 -O 2.exe
