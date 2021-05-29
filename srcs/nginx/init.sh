#!/bin/sh
openrc

# for ssh
#/etc/init.d/sshd
rc-service sshd start

#/etc/init.d/telegraf
#rc-service  telegraf start

nginx -g 'daemon off;'
