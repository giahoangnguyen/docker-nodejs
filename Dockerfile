############################################################
# Dockerfile build images
# Version: 0.0.1
# Author: Gia Hoang Nguyen <dev.hoanggia@gmail.com>
############################################################

# Set the base image to Centos
FROM centos:centos7

# File Author / Maintainer
MAINTAINER Hoang Nguyen <dev.hoanggia@gmail.com>

# Install
RUN yum -y install epel-release
RUN yum install -y gcc-c++ make
RUN yum -y install nodejs
RUN yum -y install npm

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY server.js /usr/src/app

EXPOSE 200
CMD [ "npm", "start" ]
