FROM debian:buster

RUN	apt-get update -y &&\
	apt-get upgrade -y &&\
	apt-get install wget -y &&\
	apt-get install -y php7.3 php-fpm php-mysql mariadb-client &&\
	wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www &&\
	cd /var/www &&\
	tar -xzf wordpress-6.0-fr_FR.tar.gz &&\
	rm wordpress-6.0-fr_FR.tar.gz &&\
	chown -R root:root /var/www/wordpress &&\
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar &&\
	chmod 755 wp-cli.phar &&\
	mv wp-cli.phar /usr/local/bin/wp &&\
	mkdir -p /run/php/

EXPOSE 9000

COPY conf/config.sh /run/php/config.sh
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

ENTRYPOINT ["sh", "/run/php/config.sh" ]
