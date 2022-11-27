
FROM node:16.16 as build 


WORKDIR /react-app


COPY package*.json .


RUN yarn install


COPY . .


CMD [ "yarn", "start" ]

