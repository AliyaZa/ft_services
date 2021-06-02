FROM alpine:3.12

#RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk update
RUN apk add grafana
RUN apk add openrc
RUN apk add telegraf
RUN apk add libc6-compat

# openrc
RUN mkdir -p /run/openrc
RUN touch /run/openrc/softlevel

RUN openrc

#copy conf
# WORKDIR /
# COPY ./srcs/grafana.ini /etc/

#copy conf
WORKDIR /
COPY ./grafana.db /usr/share/grafana/data/

#copy conf
WORKDIR /
COPY ./init.sh /

EXPOSE 3000

ENTRYPOINT ["sh", "init.sh"]
