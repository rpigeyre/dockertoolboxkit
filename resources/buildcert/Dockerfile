FROM alpine:latest

# install openssl
RUN apk add --update openssl && \
    rm -rf /var/cache/apk/*

RUN \
	mkdir /ssl-data && \
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /ssl-data/cert.key -out /ssl-data/cert.crt -subj "/C=FR/ST=Lyon/L=Lyon/O=Global Security/OU=IT Department/CN=localhost"

CMD exit 0