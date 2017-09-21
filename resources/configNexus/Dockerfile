FROM alpine:latest

# install curl
RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

ADD config.json config.json
	
CMD \ 
curl -v -X POST -u admin:admin123 --header "Content-Type: application/json" 'http://nexus:8081/service/siesta/rest/v1/script' -d @config.json && \
curl -v -X POST -u admin:admin123 --header "Content-Type: text/plain" 'http://nexus:8081/service/siesta/rest/v1/script/installdp/run'