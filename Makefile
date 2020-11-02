PROJECT:="gcp-playground"
GIT_COMMIT:=$(shell git rev-parse --short HEAD)

.PHONY: build

build:
	docker build -t $(PROJECT):$(GIT_COMMIT) .

run:
	docker run -p 8080:8080 $(PROJECT):$(GIT_COMMIT)