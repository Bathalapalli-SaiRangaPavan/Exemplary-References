### Let's say i have both Ubuntu and Centos machines as nodes i want install git, tree using same playbook, how would you approach?

- vi runbasedonos.yaml
```
---
- hosts: localhost
  gather_facts: true
  tasks:
  - name: installing git in ubuntu 
    command: apt-get install git -y
    when: ansible_distribution == "Ubuntu"
    
  - name: installing tree in ubuntu 
    command: apt-get install tree -y
    when: ansible_distribution == "Ubuntu"
 
  - name: installing git in centos 
    command: yum install git -y
    when: ansible_distribution == "Centos" 
    
  - name: installing tree in centos 
    command: yum install tree -y
    when: ansible_distribution == "Centos" 
```

##### Execute ansible playbook

```
ansible-playbook runbasedonos.yaml     
```
