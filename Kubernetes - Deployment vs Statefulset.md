# Kubernetes Deployment vs StatefulSet

## Deployment

A Deployment manages stateless applications, typically those that don't require stable, unique network identifiers or stable storage. Deployments are suitable for applications like web servers, API servers, or microservices.

### Sample Deployment YAML

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:latest
        ports:
        - containerPort: 80
```


## StatefulSet
A StatefulSet manages stateful applications, such as databases or key-value stores, which require stable, unique network identifiers and stable storage. StatefulSets are suitable for applications that require stable hostnames, persistent storage, or ordered deployment and scaling.

```
apiVersion: apps/v1
kind: StatefulSet
metadata:
  name: mysql
spec:
  replicas: 1
  selector:
    matchLabels:
      app: mysql
  serviceName: mysql
  template:
    metadata:
      labels:
        app: mysql
    spec:
      containers:
      - name: mysql
        image: mysql:5.7
        ports:
        - containerPort: 3306
        env:
        - name: MYSQL_ROOT_PASSWORD
          value: password
        volumeMounts:
        - name: mysql-persistent-storage
          mountPath: /var/lib/mysql
  volumeClaimTemplates:
  - metadata:
      name: mysql-persistent-storage
    spec:
      accessModes: ["ReadWriteOnce"]
      resources:
        requests:
          storage: 1Gi
```
