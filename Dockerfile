FROM node:13-alpine

ENV my_first_env

RUN mkdir -p /home/app

COPY . /home/app

CMD ["node", "server.js"]
