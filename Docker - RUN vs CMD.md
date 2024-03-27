## RUN: 
- This instruction is used to execute commands during the image build process.
- It is used to install packages, update configurations, and perform any other actions necessary to set up the environment inside the Docker image.
- Each RUN instruction creates a new layer in the Docker image.

#### Dockerfile
```
FROM ubuntu:latest
RUN apt-get update && apt-get install -y nginx
```

## CMD:
- This instruction is used to provide default command and arguments for executing the container when it starts.
- It can be overridden at runtime by passing arguments to docker run.
- If a Dockerfile has multiple CMD instructions, only the last one will take effect.

#### Dockerfile:

```
FROM nginx:latest
CMD ["nginx", "-g", "daemon off;"]
```
