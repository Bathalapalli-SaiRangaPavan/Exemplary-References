#!/bin/bash
# I switched to root user
cd /opt
# Install Java 11 in Amazon Linux
amazon-linux-extras install java-openjdk11 -y
# Install Jenkins
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y
# Start Jenkins service
service jenkins start
