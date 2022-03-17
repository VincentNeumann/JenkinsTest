FROM node:13-alpine

RUN mkdir -p /home/app

COPY . /home/app

CMD NO_COLOR=1
CMD /bin/sh -c "cd /home/app && npm install"
CMD /bin/sh -c "cd /home/app && npm run test"
