openrc
cd /
chown -R www-data:www-data /usr/share/webapps/phpmyadmin/ /var/www/html
chmod -R a-x,a=rX,u+w /usr/share/webapps/phpmyadmin/ /var/www/html

rc-service -v php-fpm7 start

nginx -g 'daemon off;'
