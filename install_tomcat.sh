#!/bin/bash

#This script is used to install tomcat manually.

apt update -y
apt install default-jdk
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz
tar -xvf apache-tomcat-10.0.20.tar.gz
rm -rf apache-tomcat-10.0.20.tar.gz
cd apache-tomcat-10.0.20/bin/
./catalina.sh start
ps -aef | grep 'tomcat'
