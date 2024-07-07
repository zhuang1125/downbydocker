FROM ubuntu:latest

#注意，换行用TAB

RUN apt-get update \
    && apt-get install -y vim \
    && apt-get install -y tree \
    && apt-get install -y net-tools \
    && apt-get install -y git \
    && apt-get install -y python3 \
    && apt-get install -y python3-pip  \
    && apt install -y mysql-client 


    
