.PHONY: build-16 build-16-slim

DOCKER_IMAGE=dockette/electron

build-16:
	docker build -t ${DOCKER_IMAGE}:16 -f 16/Dockerfile .

build-16-slim:
	docker build -t ${DOCKER_IMAGE}:16-slim -f 16/Dockerfile.slim .
