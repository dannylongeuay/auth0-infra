.DEFAULT_GOAL := help

.PHONY: help
help: ## View help information
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: asdf-bootstrap
asdf-bootstrap: ## Install all tools through asdf-vm
	asdf plugin-add terraform    || asdf install terraform

.PHONY: plan
plan: asdf-bootstrap ## Preview terraform changes
	terraform init
	terraform plan
