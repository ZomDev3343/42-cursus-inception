build:
	docker-compose -f srcs/docker-compose.yml -d --build

start:
	docker-compose -f srcs/docker-compose.yml up

stop:
	docker-compose -f srcs/docker-compose.yml down -v
