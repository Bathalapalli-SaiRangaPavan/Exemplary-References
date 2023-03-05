# Shell Script to Install Tomcat 

----------------------
vi install-tomcat.sh 
-----------------------
#!/bin/bash
amazon-linux-extras install java-openjdk11
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.6/bin/apache-tomcat-10.1.6.tar.gz
tar -xvzf apache-tomcat-10.1.6.tar.gz
rm -rf apache-tomcat-10.1.6.tar.gz
mv apache-tomcat-10.1.6 tomcat
cd tomcat/bin/
./startup.sh

### Give execute permissions for ypur script 
chmod +x install-tomcat.sh
### Run the shell script 
./install-tomcat.sh

#### Make sure you open port 8080 in security group
##### To get Tomcat GUI 

Browse - http://<giveyouripv4>:8080

