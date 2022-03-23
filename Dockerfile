FROM cypress/included:3.2.0

RUN mkdir -p /home/app

COPY . /home/app

# CMD NO_COLOR=1
# CMD /bin/sh -c "cd /home/app && rm node_modules"
# CMD /bin/sh -c "cd /home/app && npm install --cache /tmp/empty-cache"
CMD ["npm", "run", "test"]
# CMD /bin/sh -c "sh -l"