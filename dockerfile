FROM alpine:latest

LABEL maintainer="Artem turganov <atruganov@gmail.com>"

#COPY docker-start.sh /docker-start.sh
RUN apk update && apk add openvpn 
#RUN chmod 755 /docker-start.sh

EXPOSE 1194
CMD ["/docker-start.sh"]