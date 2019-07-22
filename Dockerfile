FROM node:10-alpine

RUN mkdir -p /home/node/reflector/node_modules && chown -R node:node /home/node/reflector

WORKDIR /home/node/reflector

ADD /Users/rramnath/github/scripts/reflector.js ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "reflector.js" ]