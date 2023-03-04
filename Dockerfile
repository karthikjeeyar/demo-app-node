
FROM registry.access.redhat.com/ubi8/nodejs-14:latest



WORKDIR /demo-app


COPY package*.json .


RUN yarn install


COPY . .


CMD [ "yarn", "start" ]

