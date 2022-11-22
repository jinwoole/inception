FROM alpine:3.13

RUN	apk update && apk upgrade && apk add --no-cache \
        nginx \
        openssl

# nginx SSL
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
        -out /etc/nginx/ssl/jinwoole.pem \
        -keyout /etc/nginx/ssl/jinwoole.key \
        -subj "/C=KR/ST=Seoul/L=Seoul/O=42/OU=jinwoole.42.fr/CN=jinwoole.42.fr/"

# nginx config
RUN mkdir -p /run/nginx

# Start nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]