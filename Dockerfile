FROM node:8
WORKDIR /app
COPY package.json /app

RUN apk update
RUN apk add docker
RUN pip install docker-compose
RUN apk add nodejs

COPY . /app
CMD node index.js
