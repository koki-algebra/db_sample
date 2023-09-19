.PHONY: help
.DEFAULT_GOAL := help

# environment variables
DATABASE := app
USER := user
PASSWORD := password

run: ## Run database
	@make clear
	@docker compose up -d

clear: ## Clear containers
	@docker compose down --volumes

psql: ## Login PostgreSQL
	@psql --host localhost --username $(USER) --dbname $(DATABASE) --password

mysql: ## Login MySQL
	@mysql --protocol TCP --host localhost --user $(USER) --database $(DATABASE) --password

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
