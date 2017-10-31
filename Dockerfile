FROM node

RUN mkdir -p /test/src/app
WORKDIR /test/src/app

COPY package.json /test/src/app/
RUN npm install

COPY . /test/src/app

EXPOSE 8080

CMD ["npm","start"]