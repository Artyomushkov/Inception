cd /var/www/html/wordpress
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

mkdir /run/php


wp core download "--allow-root"


wp config create	"--dbhost=$MYSQL_HOST" \
 				"--dbname=$MYSQL_DB" \
 				"--dbuser=$MYSQL_USER" \
 				"--dbpass=$MYSQL_PASSWORD" \
 				"--allow-root"

wp core install "--title=$WP_TITLE" \
				"--admin_user=$WP_ADMIN" \
				"--admin_password=$WP_ADMIN_PASSWORD" \
				"--admin_email=$WP_ADMIN_MAIL" \
				"--url=$DOMAIN_NAME" \
				"--allow-root"

wp user create $WP_USER $WP_USER_MAIL --role=author --user_pass=$WP_USER_PASSWORD --allow-root

php-fpm7.3 -F
