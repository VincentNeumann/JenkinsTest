FROM node:13-alpine

RUN mkdir -p /home/app

COPY . /home/app

CMD NO_COLOR=1
CMD "npm install"
