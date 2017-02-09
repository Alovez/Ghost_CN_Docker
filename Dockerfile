# Pull base image  
FROM ubuntu:14.04  

MAINTAINER AloveZ "ruinand@live.com" 
# install env
RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN sudo apt-get install -y nodejs=4.2.0
RUN npm install forever -g
# get Ghost_CN
RUN wget http://dl.ghostchina.com/Ghost-0.7.4-zh-full.zip
RUN unzip Ghost-0.7.4-zh-full.zip -d Ghost
RUN cd Ghost

# expose port
EXPOSE 2368

# run server
ENTRYPOINT NODE_ENV=production forever start index.js
