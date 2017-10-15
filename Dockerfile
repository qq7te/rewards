FROM node:alpine

EXPOSE 80 443

COPY public /home/node/app/public
COPY myapp.js /home/node/app/
COPY package.json /home/node/app
COPY routes /home/node/app/routes

WORKDIR /home/node/app
RUN cd /home/node/app && npm install

CMD ["node", "myapp.js"]

