# Pull base image  
FROM alovez/nodejs_4.2.0  

MAINTAINER AloveZ "ruinand@live.com" 
# install env


# get Ghost_CN
# RUN wget http://dl.ghostchina.com/Ghost-0.7.4-zh-full.zip
# RUN unzip Ghost-0.7.4-zh-full.zip -d Ghost
VOLUME ["/root/workspace"] 
WORKDIR /root/workspace

# expose port
EXPOSE 2368

# run server
ENTRYPOINT npm start
