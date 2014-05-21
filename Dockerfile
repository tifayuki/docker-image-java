FROM ubuntu:trusty
MAINTAINER Feng Honglin <hfeng@tutum.co>

# Install Oracle Java 7
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y oracle-java8-installer
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y oracle-java8-set-default

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
