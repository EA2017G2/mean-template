FROM node:alpine

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY package.json .
RUN npm install --quiet

COPY . .

WORKDIR /usr/app/angular-app
RUN npm install --quiet

WORKDIR /usr/app
RUN npm install -g @angular/cli
RUN npm install grunt-cli -g
RUN grunt build

WORKDIR /usr/app/build

EXPOSE 3333
