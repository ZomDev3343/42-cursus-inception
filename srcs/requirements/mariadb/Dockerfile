FROM debian:bullseye

RUN apt update -y &&\
	apt upgrade -y &&\
	apt install mariadb-server -y &&\
	apt install openssl -y

COPY conf/mariadb.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/start.sh /etc/mysql/mariadb.conf.d/start.sh

RUN chmod +x /etc/mysql/mariadb.conf.d/start.sh

EXPOSE 3306

CMD [ "sh", "/etc/mysql/mariadb.conf.d/start.sh" ]
