
DOCKER_COMPOSE	=	docker-compose -f srcs/docker-compose.yml --project-directory srcs 

.PHONY:	all re build background foreground stop rm

all:		build foreground

build:
			mkdir -p /home/jhizdahr/data/db /home/jhizdahr/data/wp
			$(DOCKER_COMPOSE) build

foreground:
			$(DOCKER_COMPOSE) up

background:
			$(DOCKER_COMPOSE) up -d

stop:
			$(DOCKER_COMPOSE) stop

rm:
			docker system prune -af && sudo rm -rf /home/jhizdahr/data

re:			rm build foreground