FROM ubuntu:latest
MAINTAINER Fidencio Garrido
RUN apt-get update
RUN apt-get -y install wget nano git tar gcc
RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
RUN echo 'deb http://pkg.jenkins-ci.org/debian binary/' >> /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install jenkins maven
WORKDIR /home
EXPOSE 8080
RUN service jenkins start