FROM ubuntu:14.04
MAINTAINER Jeffery Utter "jeff@jeffutter.com"

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root

RUN apt-get update;\
    apt-get -y install software-properties-common;\
    apt-add-repository ppa:chris-lea/node.js
RUN apt-get update

RUN locale-gen en_US.UTF-8 ;\
    echo 'LANG="en_US.UTF-8"' > /etc/default/locale ;\
    dpkg-reconfigure locales

RUN apt-get -y install \
nodejs
