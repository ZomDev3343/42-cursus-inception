FROM debian:buster

RUN apt update -y &&\
	apt upgrade -y &&\
	apt install vim -y &&\
	apt install mariadb-server -y &&\
	apt install openssl -y

COPY conf/mariadb.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/start.sh /etc/mysql/mariadb.conf.d/start.sh

RUN chmod 777 /etc/mysql/mariadb.conf.d/start.sh

CMD [ "/etc/mysql/mariadb.conf.d/start.sh" ]
