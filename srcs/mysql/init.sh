#!/bin/sh
openrc

mysql_install_db --user=root --datadir="/var/lib/mysql"


#/etc/init.d/telegraf start
rc-service telegraf start

rc-service mariadb setup
rc-service mariadb start

db_name='wordpress_base'
username='adminwp'
password='adminwp'
hostname='localhost'

# WordPress database
mysql -u root -e "CREATE DATABASE $db_name;"
mysql -u root -e "CREATE USER '$username'@'%' IDENTIFIED BY '$password';"
#mysql  -e "CREATE USER 'adminwp'@'localhost' IDENTIFIED BY 'adminwp';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $db_name.* TO '$username'@'%' WITH GRANT OPTION;"
mysql -u root -e "UPDATE mysql.user SET plugin='mysql_native_password' WHERE user='$username';"
mysql -u root -e "FLUSH PRIVILEGES;"

mysql -u root $db_name < /wp_base.sql

sh usr/share/mariadb/mysql.server start
tail -f /dev/null
