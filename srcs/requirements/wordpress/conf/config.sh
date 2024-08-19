sleep 10

cd /var/www/wordpress

wp config create --allow-root \
		--dbname=$SQL_DATABASE \
		--dbuser=$SQL_USER_ADMIN \
		--dbpass=$SQL_ADMIN_PASSWORD \
		--dbhost=mariadb:3306 --path='/var/www/wordpress'

wp core install --title=$WS_TITLE \
				--url=$DOMAIN_NAME \
				--admin_user=$WS_ADMIN_USER \
				--admin_password=$WS_ADMIN_PASSWORD \
				--admin_email=$WS_ADMIN_EMAIL \
				--allow-root --path='/var/www/wordpress'

wp user create 	--allow-root --role=author $WS_USER_LOGIN $WS_USER_MAIL \
    			--user_pass=$WS_USER_PASSWORD --path='/var/www/wordpress' >> /log.txt

cd -

php-fpm7.3 -F

