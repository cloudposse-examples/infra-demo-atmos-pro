export DOCKER_ORG ?= cloudposse-examples
export DOCKER_TAG ?= latest
export ECR_IMAGE ?= infra-demo-atmos-pro
export DOCKER_IMAGE ?= $(DOCKER_ORG)/$(ECR_IMAGE)
export DOCKER_IMAGE_NAME ?= $(DOCKER_IMAGE):$(DOCKER_TAG)

# Name for app (used in banner and name of wrapper script)
export APP_NAME ?= ex1

# Default install path, if lacking permissions, ~/.local/bin will be used instead
export INSTALL_PATH ?= /usr/local/bin

-include $(shell curl -sSL -o .build-harness "https://cloudposse.tools/build-harness"; echo .build-harness)

.DEFAULT_GOAL := all

.PHONY: all build build-clean install run run/new run/check push


all: init deps build install run/new
	@exit 0

## Install dependencies (if any)
deps: init
	@exit 0

## Build docker image
build: export DOCKER_FILE=components/docker/infrastructure/Dockerfile
build:
	@$(MAKE) --no-print-directory docker/build

## Build docker image with no cache
build-clean: export DOCKER_BUILD_FLAGS=--no-cache
build-clean: build
	@exit 0

## Install wrapper script from geodesic container
install:
	@docker run --rm --env APP_NAME --env DOCKER_IMAGE --env DOCKER_TAG --env INSTALL_PATH $(DOCKER_IMAGE_NAME) | bash -s $(DOCKER_TAG)

## Start the geodesic shell by calling wrapper script
run:
	@$(APP_NAME)

run/check:
	@if [[ -n "$$(docker ps --format {{ '{{ .Names }}' }} --filter name="^/$(APP_NAME)\$$")" ]]; then \
		printf "**************************************************************************\n" ; \
		printf "Not launching new container because old container is still running.\n"; \
		printf "Exit all running container shells gracefully or kill the container with\n\n"; \
		printf "  docker kill %s\n\n" "$(APP_NAME)" ; \
		printf "**************************************************************************\n" ; \
		exit 9 ; \
	fi

run/new: run/check run
	@exit 0

.PHONY: terraform-rm-lockfiles rebuild-adr-docs rebuild-aws-config rebuild-docs ecr-auth

## Remove all lock files
terraform-rm-lockfiles:
	$(shell find . -name ".terraform.lock.hcl" -exec rm -v {} \;)

## Rebuild README for all Terraform components
rebuild-docs: packages/install/terraform-docs
	@pre-commit run --all-files terraform_docs
