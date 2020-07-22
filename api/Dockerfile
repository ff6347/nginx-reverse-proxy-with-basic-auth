FROM node:10.22.0-alpine as builder
WORKDIR /usr/app
COPY ./package*.json ./
RUN npm ci --quiet
COPY ./ ./
EXPOSE 3000
CMD [ "node" , "index.js"]
