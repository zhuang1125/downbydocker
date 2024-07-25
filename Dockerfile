FROM node:20.9.0-bullseye

ENV NODE_VERSION="20.9.0"
# ENV NODE_ENV=production
RUN git clone https://github.com/digitalocean/nginxconfig.io.git && cd nginxconfig.io &&  npm ci 

