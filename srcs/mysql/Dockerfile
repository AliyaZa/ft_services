FROM alpine:3.12

# for telegraf
#RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

# install
RUN apk update
RUN apk upgrade
RUN apk add openrc
RUN apk add mysql mysql-client
RUN apk add mariadb
RUN apk add mariadb-client
RUN apk add mariadb-common

# RUN     apk add telegraf

# rc
RUN mkdir -p /run/openrc
RUN touch /run/openrc/softlevel
#RUN openrc

#copy config
COPY ./mysql.cnf /etc/my.cnf.d

# хранилище БД (внутри серверы)
VOLUME [ "/var/lib/mysql" ]


## copy bd wordpress
WORKDIR /
COPY ./wp_base.sql .

#Checks (for serv in pods)

#WORKDIR /
#COPY ./srcs/check.sh /

## copy sh
WORKDIR /
COPY ./init.sh /


EXPOSE 3306

ENTRYPOINT sh init.sh
