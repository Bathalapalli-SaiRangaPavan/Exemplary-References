```
---
- hosts: localhost
  become: true
  tasks:
    - name: Install list of packages
      yum: name='{{item}}' state=present
      with_items:
       - httpd
       - wget
       - tree
       - git
       - zip
       - unzip
```

### Loop feature will be removed in version 2.11
```
---
- hosts: localhost
  become: true
  tasks:
   - name: Install list of packages
     yum:
      name: ['httpd', 'wget', 'tree', 'git', 'zip', 'unzip']
 ```
