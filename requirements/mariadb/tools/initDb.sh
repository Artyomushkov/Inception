#userdel mysql
#useradd -u 1200 mysql
#chown -R mysql:mysql /var/lib/mysql
sed -ie 's/bind-address/#bind-address/g' /etc/mysql/mariadb.conf.d/50-server.cnf
sed -ie 's/#port/port/g' /etc/mysql/mariadb.conf.d/50-server.cnf
service mysql start
mysql -u root -e "DROP USER IF EXISTS '${MYSQL_USER}'@'%';"
mysql -u root -e "CREATE DATABASE ${MYSQL_DB};"
mysql -u root -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}'"
mysql -u root -e "GRANT ALL ON ${MYSQL_DB}.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}' WITH GRANT OPTION;"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"