FROM centos

MAINTAINER Nirav Mehta <mehtanirav@live.com>

RUN yum -y update; yum clean all

# Base installs
RUN yum -y update && yum -y install wget hostname tar hostname; yum clean all

# Install JDK 7 Update 75
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u75-b13/jdk-7u75-linux-x64.rpm"
RUN rpm -ivh jdk-7u75-linux-x64.rpm
RUN rm -f jdk-7u75-linux-x64.rpm
