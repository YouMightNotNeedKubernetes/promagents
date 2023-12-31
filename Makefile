-include .env.default
-include .env

docker_stack_name = promagents
compose_files := -c docker-compose.yml

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	compose_files += -c docker-compose.linux.yml
endif
ifneq ("$(wildcard docker-compose.override.yml)","")
	compose_files += -c docker-compose.override.yml
endif

it:
	@echo "make [configs|deploy|destroy]"

configs:
	@echo "No configs to generate [SKIP]"

plan:
	docker stack config $(compose_files)

deploy: configs
	docker stack deploy $(compose_files) $(docker_stack_name)

destroy:
	docker stack rm $(docker_stack_name)
