FROM node:8-alpine

WORKDIR /usr/app

ADD . /usr/app
RUN npm install --quiet

EXPOSE 8080

CMD ["npm", "start"]
