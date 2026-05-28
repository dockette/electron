.PHONY: build test run build-16 build-16-slim

DOCKER_IMAGE=dockette/electron

build: build-16 build-16-slim

test: build-16-slim
	docker run --rm ${DOCKER_IMAGE}:16-slim node --version
	docker run --rm ${DOCKER_IMAGE}:16-slim npm --version
	docker run --rm ${DOCKER_IMAGE}:16-slim make --version
	docker run --rm ${DOCKER_IMAGE}:16-slim zip --version

run:
	docker run -it --rm ${DOCKER_IMAGE}:16-slim /bin/bash

build-16:
	docker build -t ${DOCKER_IMAGE}:16 -f 16/Dockerfile .

build-16-slim:
	docker build -t ${DOCKER_IMAGE}:16-slim -f 16/Dockerfile.slim .
