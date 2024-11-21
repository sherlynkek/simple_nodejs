FROM node:20

WORKDIR /node_src

COPY package*.json index.js ./

RUN npm install

ARG port=3000
EXPOSE ${port}

CMD node index.js

