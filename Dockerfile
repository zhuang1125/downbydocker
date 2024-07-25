FROM node:20.9.0-bullseye

ENV NODE_VERSION="20.9.0"

RUN git clone https://github.com/digitalocean/nginxconfig.io.git
RUN npm install &&  npm ci 

