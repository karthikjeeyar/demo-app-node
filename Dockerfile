
FROM registry.access.redhat.com/ubi8/nodejs-14:latest



WORKDIR /demo-app


COPY package*.json .


RUN npm install

# Copy the dependencies into a Slim Node docker image
FROM registry.access.redhat.com/ubi8/nodejs-14-minimal:latest

# Install app dependencies
COPY --from=0 /opt/app-root/src/node_modules /opt/app-root/src/node_modules
COPY . /opt/app-root/src



CMD [ "npm", "start" ]

