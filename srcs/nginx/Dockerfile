FROM alpine:3.12

#installing
RUN apk update
RUN apk upgrade
RUN apk add nginx openssh supervisor vim
RUN apk add openrc --no-cache
RUN apk add --no-cache openssl

# openrc
RUN mkdir -p /run/openrc
RUN touch /run/openrc/softlevel
# RUN pk add telegraf

# Create folder for PID file
RUN mkdir -p /run/nginx

# Чтобы закинуть ключ для ssh
RUN mkdir .ssh

# добавили пользователя для проверки ssh
RUN adduser -D admin -G root && echo "admin:admin" | chpasswd

RUN mkdir -p /var/www/server

# copy congig
COPY ./srcs/default.conf /etc/nginx/conf.d

#copy rsa_keygen
COPY ./srcs/authorized_keys .ssh/id_rsa

#Script for ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/ssl/private/nginx-selfsigned.key \
	-out /etc/ssl/certs/nginx-selfsigned.crt \
	-subj "/C=RU/ST=Tatarstan/L=Kazan/O=21/OU=School/CN=localhost"

WORKDIR /
COPY ./srcs/check.sh /

WORKDIR /
COPY ./srcs/init.sh /

RUN chown -R admin:root /etc/ssh

EXPOSE 80 443 22
CMD ["sh" ,"init.sh"]

