.PHONY: help run shell

default: help

help: ## show this help
	@echo
	@fgrep -h " ## " $(MAKEFILE_LIST) | fgrep -v fgrep | sed -Ee 's/([a-z.]*):[^#]*##(.*)/\1##\2/' | column -t -s "##"
	@echo

run: ## run the application locally
	@docker-compose up --build

shell: ## shell into a development container
	@docker-compose build
	@docker-compose run --rm service bash
