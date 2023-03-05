#!/bin/bash
amazon-linux-extras install java-openjdk11
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.6/bin/apache-tomcat-10.1.6.tar.gz
tar -xvzf apache-tomcat-10.1.6.tar.gz
rm -rf apache-tomcat-10.1.6.tar.gz
mv apache-tomcat-10.1.6 tomcat
cd tomcat/bin/
./startup.sh


