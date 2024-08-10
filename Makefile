build:
	docker-compose -f srcs/docker-compose.yml -d --build

start:
	docker-compose -f srcs/docker-compose.yml start

remove:
	docker-compose -f srcs/docker-compose.yml down -v
