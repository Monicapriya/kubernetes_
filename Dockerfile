
# we need node install to run this app on docker
# base image is node ver 14
FROM node:14 

# the directory to keep all the code execute them
WORKDIR /app

# copy the package.json to docker image to the current location --> /app 

COPY package*.json ./

# install the depencencies to this application to execute here we have express
# it takes package.json and installs all depencencies require for ur app to run
RUN npm install 

# pick the code on the local folder and add it to the docker image 
# copy source(. -> everything) to destination(. --> curr directory)
COPY . . 

EXPOSE 8080

# to run the file
CMD ["node","server.js"]


# to build the image
# >docker build -t name . --> builds a image
# docker run -d -p 8080(publishing the port 8080 on host):8080(app is running in this port inside conatiner) name


