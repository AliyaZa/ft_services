FROM alpine:3.12

#installing
RUN apk update
RUN apk upgrade
RUN apk add nginx openssl openssh supervisor vim
#nginx
COPY 	srcs/nginx/nginx.conf etc/nginx/conf.d/default.conf
#COPY	srcs/supervisor.conf etc/supervisord.conf

#ssl. X.509 cert - open key certificate,  w/o pass, new certif request and 2049 bit rsa key
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/ssl.key -out /etc/ssl/ssl -subj "/C=RU/ST=Tatarstan/L=Kazan/O=21 school/OU=ltanisha/CN=localhost"

#copying scripts into initial dir
COPY srcs/*.sh ./
EXPOSE 80 443
#RUN chmod +x ./init.sh
RUN mkdir -p /run/nginx
CMD ["sh", "/init.sh"]
