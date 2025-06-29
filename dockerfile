FROM node:20.15.1 AS build

RUN ["echo", "WELCOME TO THE demo-ui Dockerfile"]

WORKDIR /app

COPY . .

RUN npm install -g @angular/cli

RUN npm install

CMD ["ng", "serve", "--host", "0.0.0.0"]