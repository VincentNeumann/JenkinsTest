FROM cypress/included:3.2.0

RUN mkdir -p /home/app

COPY . /home/app

# CMD NO_COLOR=1
# CMD /bin/sh -c "cd /home/app && rm node_modules"
# CMD /bin/sh -c "cd /home/app && npm install --cache /tmp/empty-cache"
CMD /bin/sh -c "cd /home/app && npm cache clean --force && rm -rf node_modules && npm install --cache /tmp/empty-cache"
# CMD ["npm","--prefix /home/app", "run", "test", ]
# CMD /bin/sh -c "sh -l"

# ENTRYPOINT [ "npm", "--prefix", "/home/app", "test" ]
ENTRYPOINT [ "cypress run --spec /home/app/cypress/integration/*spec.js" ]