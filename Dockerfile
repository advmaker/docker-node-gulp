FROM node:7-alpine

RUN apk update && apk add openssh python make g++ --no-cache
RUN npm set progress=false && npm install -g yarn grunt bower node-sass

COPY ./docker-entrypoint.sh /

WORKDIR /app
ENTRYPOINT ["/docker-entrypoint.sh"]
