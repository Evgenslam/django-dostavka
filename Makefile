.PHONY: help build up stop down ports bash shell 

DOCKER_COMPOSE_FILE = docker-compose.local.yml
DEFAULT_ENV_FILE = .env

help:
	@echo "Usage:"
	@echo "  make build       # Build the whole project"
	@echo "  make up          # Launch the project"
	@echo "  make stop        # Stop all containers"
	@echo "  make down        # Remove all containers"
	@echo "  make ports       # Show ports and running containers"
	@echo "  make bash        # Access container of our app"
	@echo "  make shell       # Access container of our app and launch shell"

build:
	@docker-compose build --no-cache

up:
	@if [ -z "$(arg)" ]; then \
		docker-compose --env-file $(DEFAULT_ENV_FILE) up -d; \
	else \
		docker-compose --env-file "$(arg)" up -d; \
	fi

stop:
	@docker-compose stop

down:
	@docker-compose down 

ports:
	@docker-compose ps -a --filter "status=running" 

bash:
	@docker-compose exec backend bash

shell:
	@docker-compose exec backend sh



