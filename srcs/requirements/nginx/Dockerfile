FROM debian:bullseye

RUN apt update -y &&\
	apt upgrade -y &&\
	apt install vim -y &&\
	apt install nginx -y &&\
	apt install openssl -y

RUN mkdir -p /etc/nginx/ssl &&\
	openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=PO/L=Perpignan/O=42/OU=42/CN=truello.42.fr/UID=truello" &&\
	mkdir -p /var/run/nginx

COPY conf/nginx.conf /etc/nginx/sites-available/default

RUN chmod 755 /var/www/html &&\
	chown -R www-data:www-data /var/www/html

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]
