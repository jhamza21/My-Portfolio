FROM node:slim

WORKDIR /usr/src/app

COPY package.json .

RUN npm install -g nodemon

RUN npm install -g gatsby-cli 

RUN npm install

COPY . .

EXPOSE 8000

CMD ["npm", "develop"]