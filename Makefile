start:
	docker-compose -f srcs/docker-compose.yml up --force-recreate

stop:
	docker-compose -f srcs/docker-compose.yml down -v

clearstop:
	docker-compose -f srcs/docker-compose.yml down -v --rmi local
