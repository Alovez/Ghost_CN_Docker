# Pull base image  
FROM ubuntu:14.04  

MAINTAINER AloveZ "ruinand@live.com" 
# install env
RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN apt-get -y install python
RUN apt-get -y install make
RUN apt-get -y install gcc
RUN apt-get -y install g++
WORKDIR /root
RUN pwd
RUN wget https://nodejs.org/download/release/v4.2.0/node-v4.2.0.tar.gz
RUN tar -zxvf node-v4.2.0.tar.gz
WORKDIR /root/node-v4.2.0
RUN ls
RUN ./configure
RUN make install
