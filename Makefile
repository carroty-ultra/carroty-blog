.DEFAULT_GOAL := help
.PHONY: help serve

##@ General

help: ## Show this help message
	@awk 'BEGIN {FS = ":.*##"; printf "Usage: make \033[36m<target>\033[0m\n"} \
		/^[a-zA-Z_-]+:.*##/ { printf "  \033[36m%-18s\033[0m %s\n", $$1, $$2 } \
		/^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) }' $(MAKEFILE_LIST)

##@ Development

serve: ## Run Hugo server
	hugo server -D

new: ## Create new post
	hugo new content content/posts/my-first-post.md