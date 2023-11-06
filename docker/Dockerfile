# A base image for the development environment is chosen,  featuring the latest Node.js release on the latest Alpine distribution due to its compact size.
FROM node:current-alpine3.17 AS build

LABEL maintainer="rgpaydogdu@gmail.com"
LABEL description="React development environment container for LOG-in DevOps Bootcamp Final Project"
LABEL version="1.0"
LABEL author="Regaip Aydogdu"
LABEL release-date="2023-11-01"
LABEL organization="Patika"
LABEL app="React App"

# Sets the working directory in the container to "/react-app" for subsequent commands.
WORKDIR /docker/react-app

# Copies package-related files from the host to the container for dependency installation.
COPY /docker/react-app/package*.json ./

# Installs Node.js dependencies based on the copied package files. 
RUN npm install

# Copies all project files from the host into the container's working directory.
COPY /docker/react-app/ .

# Executes the "npm run build" command for project-specific build tasks.
RUN npm run build


# A base image for the development environment is chosen, featuring the latest Nginx release on the latest Alpine distribution due to its compact size.)
FROM nginx:stable-alpine

# Sets the working directory in the container to "/usr/share/nginx/html" for subsequent commands.
WORKDIR /usr/share/nginx/html

# This line copies the contents of the "/app/build" directory from a previous build stage and places them in the "/usr/share/nginx/html" directory within the Nginx image.

COPY --from=build /docker/react-app/build /usr/share/nginx/html

#It indicates that the Docker container will listen on port 80, which is the default port for HTTP traffic.
EXPOSE 80

# This line runs the "nginx" command with the argument "-g daemon off;" to prevent Nginx from running as a background daemon when the Docker container starts.
CMD ["nginx", "-g", "daemon off;"]

