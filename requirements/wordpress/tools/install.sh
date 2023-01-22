wget https://wordpress.org/latest.tar.gz
mv latest.tar.gz /var/www/html
cd /var/www/html
tar -xvf latest.tar.gz
rm -rf latest.tar.gz

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

mkdir -p /run/php
mkdir -p /etc/php/7.3/fpm

cd /var/www/html/wordpress
chmod 777 /usr/local/bin/wp

wp config create --dbhost=$MYSQL_HOST \
				--dbname=$MYSQL_DB \
				--dbuser=$MYSQL_USER \
				--dbpass=$MYSQL_PASSWORD \
				--allow-root

wp core install --title=$WP_TITLE \
				--admin_user=$WP_ADMIN \
				--admin_password=$WP_ADMIN_PASSWORD \
				--admin_email=$WP_ADMIN_MAIL \
				--url=$DOMAIN_NAME \
				--allow-root

wp user create $WP_USER $WP_USER_MAIL --role=author --user_pass=$WP_USER_PASSWORD --allow-root

chmod 777 -R /var/www/html
chown -R www-data:www-data /var/www/html

/usr/sbin/php-fpm7.3 -F -R