## Step 1 - Launch an EC2 instance Name it as Jenkins-MasterServer and Open Security Group 8080 and login to the server 

- Become root user 
```
sudo su - 
```
## Step 2 - Install Java & Jenkins in /opt 

- Note - Best practise to install 3rd party software under the opt directory
```
cd /opt
```
### Install Java 11

```
amazon-linux-extras install java-openjdk11
```
- Note - If you install Jenkins thenit becomes Master Server 

### Install Jenkins - https://pkg.jenkins.io/redhat-stable/

```
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
```
```
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
```
```
yum install jenkins -y
```
```
service jenkins start
```
```
service jenkins status
```
#### Access Jenkins-Gui
- Browse - JenkinsMaster-ServerIp
#### once u access it will ask password. Execute below command inJenkins-MasterServerip
```
cat /var/lib/jenkins/secrets/initialAdminPassword
```
- It will give password like(c860923a65af4a7cb187407dadcfff85) 
- Copy and execute it in Jenkins Gui
```
Click (Install Suggested Plugin) 
Username - admin 
password - admin
Confirm password - admin
Full name - jenkins-practise 
E-mail address - admin@gmail.com
Click (Save and Continue)
You can see jenkins url (http://Jenkins-MasterServerip:8080/)
Click (Save and Finish)
Click (Start using Jenkins)
```
#### Now You can able to see Jenkins Dashboard

### Step 3 - Launch an EC2 instance Name it as Jenkins-WorkerServer and login to the server 

- Become root user 
```
sudo su - 
```
### Install Java 11

```
amazon-linux-extras install java-openjdk11
```

### Step 4 - Add Jenkins-WorkerServer credentials in Jenkins

- Click (Manage Jenkins) 
- Click (Manage Credentials) 
under Stores scoped to Jenkins
- Click (global)
Global credentials (unrestricted)
- Click (+ Add Credentials) 
- Kind (SSH username with private key)
- Scope (Global(jenkins,nodes,items,all child items, etc)
id 
- Jenkins-slave
Username 
- ec2-user
Private key 
- Click (Enter directly)
- Click (ADD) 
- (Give private key)
- Click (create) 

