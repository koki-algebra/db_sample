.PHONY: help
.DEFAULT_GOAL := help

# environment variables
DATABASE := app
USER := user
PASSWORD := password

run: ## Run database
	@docker compose down
	@docker compose up -d

clear: ## Clear containers
	@docker compose down

psql:
	@docker exec -it postgres psql -U $(USER) -h localhost $(DATABASE)

mysql: ## Login MySQL
	@docker exec -it mysql mysql --user=$(USER) --password=$(PASSWORD) --host=localhost $(DATABASE)

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
