### Ping module - To get a response

```
ansible all -m ping
```

### Setup Module - it basically goes to remote machine and gets more information 

```
ansible all -m setup 
```

### Copy module -  copy any file from ansible managemment node to other 

```
ansible all -m copy -a "src=helloworld.txt  dest=/home/"  
```

### yum module - to install commands in RedHat/Amazon Linux

```
ansible all -m yum -a "name=git state=present"
```


### apt module - to install commands in ubuntu - Let's say i want to install tree command in only test machine.

```
ansible test -m apt -a "name=tree state=present"
```

##### To uninstall 

```
ansible test -m apt -a "name=tree state=absent"  
```

- -m = module 
- -a = arguments
