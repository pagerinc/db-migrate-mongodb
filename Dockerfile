FROM node:20.9-alpine3.18@sha256:d18f4d9889b217d3fab280cc52fbe1d4caa0e1d2134c6bab901a8b7393dd5f53 as base

RUN apk add --no-cache tini=0.19.0-r1

ENTRYPOINT ["/sbin/tini", "--"]

WORKDIR /home/node/app
COPY package.json ./
COPY test/db.config.ci test/db.config.json
COPY . .

RUN npm ci

ENV NODE_ENV=test

CMD ["npm", "test"]
