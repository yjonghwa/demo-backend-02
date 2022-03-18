FROM node:12
MAINTAINER Jonghwa Yoon "yjonghwa@amazon.com"
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3002
CMD [ "node", "app.js" ]
