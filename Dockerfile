FROM node:12.8.1-alpine

RUN sed -i "s|http://dl-cdn.alpinelinux.org|https://mirrors.aliyun.com|g" /etc/apk/repositories \
    && apk add -U tzdata && apk add curl git python make bash

RUN git clone https://github.com/YMFE/yapi.git /app/yapi --depth 1
# ADD yapi.tar.gz /app/
WORKDIR /app/yapi
RUN	npm config set registry https://registry.npm.taobao.org \
	&& npm install -g node-gyp yapi-cli \
    && npm install --production

COPY wait-for-it.sh /
COPY entrypoint.sh ./
