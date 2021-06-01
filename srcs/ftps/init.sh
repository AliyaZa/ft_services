mkdir -p home/ftps/admin
chmod 777 home/ftps/admin
adduser --home "/home/ftps/admin" -D admin && echo "admin:admin" | chpasswd
#adduser  -D admin1 && echo "admin1:admin1" | chpasswd

rc-status && rc-service vsftpd start
vsftpd /etc/vsftpd/vsftpd.conf
