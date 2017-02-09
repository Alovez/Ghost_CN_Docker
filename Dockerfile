# Pull base image  
FROM ubuntu:14.04  
  
MAINTAINER AloveZ "ruinand@live.com" 

RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install unzip


RUN wget http://dl.ghostchina.com/Ghost-0.7.4-zh-full.zip
RUN unzip Ghost-0.7.4-zh-full.zip