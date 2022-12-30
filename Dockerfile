FROM node:latest as dev-stage

WORKDIR /usr/src/app

# ENV HOME /usr/src/app/.cache
ENV CYPRESS_CACHE_FOLDER /usr/src/app/.cache

COPY package*.json ./

RUN npm install
COPY . .

RUN npm install -g @vue/cli
RUN npm install -g @vue/cli-service-global
