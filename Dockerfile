FROM node:20-alpine 

RUN apk update && apk add bash \
    && npm install -g gulp-cli

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build
