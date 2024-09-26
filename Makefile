# Makefile para manejar docker-compose

# Define colores
RED = \033[0;31m
GREEN = \033[0;32m
NC = \033[0m # Sin color

.DEFAULT_GOAL := help
# Help - Listar todos los comandos disponibles con colores
help: ## Comandos disponibles (default goal)
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

# Ruta del archivo docker-compose
DC_FILE = docker-compose.yml

up: ## Compilar y correr docker-compose
	docker-compose -f $(DC_FILE) up --build

restart-api: ## Restartear el servicio api
	docker-compose -f $(DC_FILE) restart api

restart-fe: ## Restartear el servicio api
	docker-compose -f $(DC_FILE) restart frontend

logs-api: ## Ver logs del servicio api
	docker-compose -f $(DC_FILE) logs -f api

logs-fe: ## Ver logs del servicio frontend
	docker-compose -f $(DC_FILE) logs -f frontend

logs-mongo: ## Ver logs del servicio mongodb
	docker-compose -f $(DC_FILE) logs -f mongodb

down: ## Stopear y remover los contenedores
	docker-compose -f $(DC_FILE) down

down-volume: ## Stopear y remover contenedores y volumenes
	docker-compose -f $(DC_FILE) down --volumes
