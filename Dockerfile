FROM nginx:alpine

WORKDIR /etc/nginx/conf.d
COPY site.conf default.conf

WORKDIR /public
COPY public/ .