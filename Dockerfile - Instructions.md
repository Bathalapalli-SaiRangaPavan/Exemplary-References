
## FROM

The `FROM` instruction specifies the base image for your Docker container. 

## COPY / ADD

The `COPY` or `ADD` instructions transfer files from your local machine into the Docker image. 

## RUN

The `RUN` instruction executes commands inside the Docker image during the build process. 

## WORKDIR

The `WORKDIR` instruction sets the working directory for subsequent instructions in the Dockerfile. 

## EXPOSE

The `EXPOSE` instruction informs Docker that the container listens on specific network ports at runtime. 

## CMD / ENTRYPOINT

The `CMD` or `ENTRYPOINT` instructions define the default command to run when the container starts. 

These steps collectively define the configuration and behavior of your Docker container, allowing you to create reproducible and portable environments for your applications.


```
# Use the official Node.js image as the base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose port 3000 to allow communication to/from the container
EXPOSE 3000

# Define the default command to run when the container starts
CMD ["node", "app.js"]
```
