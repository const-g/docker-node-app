FROM node:8-alpine
MAINTAINER Constantin GUAY <const.g@gmail.com>

WORKDIR /usr/app

COPY package.json .
RUN npm install --quiet

EXPOSE 8080

COPY . .

CMD ["npm", "run", "dev"]
