FROM node:alpine

WORKDIR /home/reflector

RUN npm install -g nodemon

#COPY package.json /home/reflector/package.json
#RUN npm install && npm ls
#RUN mv /reflector/node_modules /node_modules

#COPY . /home/reflector

#CMD ["npm", "start"]