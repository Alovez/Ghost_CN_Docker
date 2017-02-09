# Pull base image  
FROM ubuntu:14.04  

MAINTAINER AloveZ "ruinand@live.com" 
# install env
RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install unzip
WORKDIR ~
RUN pwd
RUN wget https://nodejs.org/download/release/v4.2.0/node-v4.2.0.tar.gz
RUN tar -zxvf node-v4.2.0.tar.gz
WORKDIR ~/node-v4.2.0
RUN ./configure
RUN make install
RUN npm install forever -g
WORKDIR ~
# get Ghost_CN
RUN wget http://dl.ghostchina.com/Ghost-0.7.4-zh-full.zip
RUN unzip Ghost-0.7.4-zh-full.zip -d Ghost
WORKDIR ~/Ghost

# expose port
EXPOSE 2368

# run server
ENTRYPOINT NODE_ENV=production forever start index.js
