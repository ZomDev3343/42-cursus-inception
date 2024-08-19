all : build

build :
	@sudo hostsed add 127.0.0.1 truello.42.fr && echo "\033[1;32m~|ADD truello.42.fr to /etc/hosts|~\033[0m"
	@sudo docker compose -f ./srcs/docker-compose.yml up -d

down :
	@sudo hostsed rm 127.0.0.1 truello.42.fr && echo "\033[1;31m~|DELETE truello.42.fr from /etc/hosts|~\033[0m"
	@sudo docker compose -f ./srcs/docker-compose.yml down

stop :
	@sudo docker compose -f ./srcs/docker-compose.yml stop

start :
	@sudo docker compose -f ./srcs/docker-compose.yml start

status :
	@sudo docker ps

delete : down
	@sudo docker image rm wordpress -f
	@sudo docker image rm mariadb -f
	@sudo docker image rm nginx -f
	@sudo docker volume rm mariadb
	@sudo docker volume rm wordpress && echo "\033[1;33m~| Nettoyage des images/containers/volumes de Docker : OK |~\033[0m"\

prune :
	@sudo rm -rf /home/truello/docker/data/wordpress/*
	@sudo rm -rf /home/truello/docker/data/mariadb/*
	@sudo docker system prune -af && echo "\033[1;33m~| Nettoyage du cache de Docker : OK |~\033[0m"\
