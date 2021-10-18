FROM node:14

WORKDIR /src

RUN apt-get update
RUN apt-get install vim -y

COPY package.json .

RUN npm install

COPY app app
COPY public public

EXPOSE 3000/tcp
EXPOSE 40000-40100/tcp
EXPOSE 40000-40100/udp

CMD npm start
