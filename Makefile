docker_stack_name = promagents


it:
	@echo "make [configs|deploy|destroy]"

configs:
	@echo "No configs to generate [SKIP]"

deploy: configs
	docker stack deploy -c docker-compose.yml $(docker_stack_name)

destroy:
	docker stack rm $(docker_stack_name)
