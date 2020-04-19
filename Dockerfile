FROM alpine:latest

# MAINTAINER aturganov

#COPY docker-start.sh /docker-start.sh
RUN apk update && apk add openvpn 
#RUN chmod 755 /docker-start.sh

EXPOSE 1187
#CMD ["/docker-start.sh"]