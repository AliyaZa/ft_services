
FROM alpine:3.12

RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk update
RUN apk add openrc influxdb telegraf


# openrc
RUN openrc
RUN mkdir -p /run/openrc
RUN touch /run/openrc/softlevel

#VOLUME [ "/var/lib/influxdb" ]

# telegraf
RUN mkdir /etc/telegraf/
RUN telegraf -sample-config --input-filter docker --output-filter influxdb > /etc/telegraf/telegraf.conf

# WORKDIR /
#COPY ./srcs/telegraf.conf /etc/

#WORKDIR /
#COPY ./srcs/check.sh /

EXPOSE 8086

#cope start.sh
WORKDIR /
COPY ./init.sh .
#ENTRYPOINT sh
ENTRYPOINT sh init.sh
