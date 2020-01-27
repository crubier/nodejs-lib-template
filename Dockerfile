FROM node:10-alpine

RUN apk  add --no-cache dumb-init # build-base

WORKDIR /src

COPY *.json /src/

RUN yarn

COPY . /src/

ENTRYPOINT ["dumb-init", "--"]
CMD ["yarn", "start"]
