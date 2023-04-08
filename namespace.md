### Create a namespace.yaml file.

```
vi namespace.yaml
```


## Inside the namespace.yaml file. Write code for creating a dev namespace.

```
apiVersion: v1
kind: Namespace
metadata:
  name: dev
```
##### Execute the below command to create a dev namespace.
```
kubectl apply -f namespace.yaml 
```

## Create a qa Namespace

```
apiVersion: v1
kind: Namespace
metadata:
  name: qa
```
##### Execute the below command to create a qa namespace.
```
kubectl apply -f namespace.yaml 
```

## Create a prod Namespace

```
apiVersion: v1
kind: Namespace
metadata:
  name: prod
``` 
##### Execute the below command to create a qa namespace.
```
kubectl apply -f namespace.yaml 
```
#### To see all the namespaces

```
kubectl apply -f namespace.yaml 
```
