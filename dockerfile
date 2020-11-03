FROM alpine:latest

LABEL maintainer="Artem turganov <atruganov@gmail.com>"

USER root

#COPY docker-start.sh /docker-start.sh
RUN apk update && apk add openvpn 

ADD start.sh /root/
ADD server.conf /etc/openvpn
RUN chmod 755 /root/start.sh


EXPOSE 1194

CMD ["/root/start.sh"]

