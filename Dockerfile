FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npx knex migrate:latest

COPY . .


EXPOSE 3000
CMD [ "node", "./bin/www" ]