.PHONY: help build up stop ports bash shell 

DOCKER_COMPOSE_FILE = docker-compose.local.yml

help:
	@echo "Usage:"
	@echo "  make build       # Build the whole project"
	@echo "  make up          # Launch the project"
	@echo "  make stop        # Stop the project"
	@echo "  make ports       # Show ports and running containers"
	@echo "  make bash        # Access container of our app"
	@echo "  make shell       # Access container of our app and launch shell"
	@echo "  make list        # List running containers"

build:
	@docker-compose -f ${DOCKER_COMPOSE_FILE} build

up:
	@docker-compose -f ${DOCKER_COMPOSE_FILE} up -d
	
stop:
	@docker-compose -f ${DOCKER_COMPOSE_FILE} stop

ports:
	@docker-compose -f ${DOCKER_COMPOSE_FILE} ps -a --filter "status=running" 

bash:
	@docker-compose -f ${DOCKER_COMPOSE_FILE} exec app bash

shell:
	@docker-compose -f ${DOCKER_COMPOSE_FILE} exec app sh

debug:
	@echo ${DOCKER_COMPOSE_FILE}




#TODO: в ридми, как напишешь мейкфайл, нужно описать процесс разворачивания проектав целом, там это будет "указать переменные в энв" и "make build; make up"
#TODO: переписать nginx

