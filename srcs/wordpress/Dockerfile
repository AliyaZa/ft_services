FROM alpine:3.12

#add telegraf
#RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

#upadate
RUN apk update
RUN apk upgrade
#RUN apk telegraf
RUN apk add nginx openrc && mkdir /run/nginx;
RUN apk add php7-common php7-curl php7-xml php7-mysqli \
php7-imap php7-cgi fcgi php7-iconv php7-json php7-gd \
php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom \
php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php php-fpm
#!!!!здесь закончила

# rc
RUN mkdir -p /run/openrc
RUN touch /run/openrc/softlevel
#RUN openrc

WORKDIR /var/www/localhost/htdocs

#download
RUN wget http://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz

WORKDIR /

#copy config wp
COPY ./srcs/wp-config.php /var/www/localhost/htdocs/wordpress

# copy congig nginx
COPY ./srcs/default.conf /etc/nginx/conf.d



# copy check (for reastaart)
COPY ./srcs/check.sh /

#cope start.sh
COPY ./srcs/start.sh .

EXPOSE 5050
ENTRYPOINT sh start.sh
