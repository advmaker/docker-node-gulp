FROM node:7-alpine

RUN apk update && apk add openssh python make g++ --no-cache
RUN npm set progress=false && npm install -g yarn gulp bower node-sass
RUN apk add openssh-client bash git --no-cache

ENTRYPOINT ["/bin/bash", "-c"]
