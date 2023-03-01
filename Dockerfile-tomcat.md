#### Step 1 - Pull Centos from Dockerhub - FROM 
#### Step 2 - Install Java - RUN 
#### Step 3 - Create /opt/tomcat directory - RUN 
#### Step 4 - Change work directory to /opt/tomcat - WORKDIR 
#### Step 5 - Download tomcat package - ADD
#### Step 6 - Extract tar.gz file - RUN 
#### Step 7 - Rename to tomcat directory - RUN  
#### Step 8 - Tell to docker that it runs on port 8080 - EXPOSE
#### Step 9 - Start tomcat services by using catalina.sh - CMD

- Make sure you installed Docker and started Docker service using - service docker start 

```
FROM centos:7
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.72/bin/apache-tomcat-9.0.72.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.72.tar.gz
RUN mv apache-tomcat-9.0.72/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
```
#### Create an image from Dockerfile 

```
docker build -t tomcat .
```

#### Check Docker image 

```
docker images
```
I got output like below. 
```
tomcat       latest    f30800e1c83c   22 seconds ago   645MB
centos       7         eeb6ee3f44bd   17 months ago    204MB
```

#### Create a container out of image 
```
docker run -d --name tomcat-container -p 8081:8080 f30800e1c83c
```
- Note - Give your image id instead of giving f30800e1c83c

```
docker ps -a
```
#### Make sure you open port 8081 in security group
##### To get Tomcat GUI 

- Browse - http://<giveyouripv4>:8081
