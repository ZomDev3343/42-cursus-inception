FROM debian:buster

RUN apt update -y &&\
	apt upgrade -y &&\
	apt install -y vim\
	wget\
	php7.3\
	php-fpm\
	php-mysql\
	mariadb-client

RUN wget https://fr.wordpress.org/wordpress-6.6-fr_FR.tar.gz -P /var/www &&\
	cd /var/www && tar -xvf wordpress-6.6-fr_FR.tar.gz && rm wordpress-6.6-fr_FR.tar.gz &&\
	chown -R root:root /var/www/wordpress &&\
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar &&\
	chmod +x wp-cli.phar &&\
	mv wp-cli.phar /usr/local/bin/wp &&\
	mkdir -p /run/php

COPY conf/config.sh /run/php/config.sh
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

ENTRYPOINT ["sh", "/run/php/config.sh" ]
