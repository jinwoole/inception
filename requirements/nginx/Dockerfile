FROM debian:buster

RUN apt-get update -y && \
    apt-get install -y nginx && \
    apt-get install -y openssl

RUN mkdir /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
        -out /etc/nginx/ssl/jinwoole.pem \
        -keyout /etc/nginx/ssl/jinwoole.key \
        -subj "/C=KR/ST=Seoul/L=Gangnam/O=42/OU=jinwoole/CN=jinwoole/"

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
