FROM node:12.8.1-alpine
RUN sed -i "s|http://dl-cdn.alpinelinux.org|https://mirrors.aliyun.com|g" /etc/apk/repositories \
    && apk add -U tzdata && apk add curl git python make bash
RUN git clone https://github.com/YMFE/yapi.git /app/yapi/vendors --depth 1 --branch v1.8.3
RUN npm config set registry https://registry.npm.taobao.org \
    && npm install -g yapi-cli ykit
WORKDIR /app/yapi/vendors
RUN npm install --production
COPY wait-for-it.sh ./
COPY entrypoint.sh ./