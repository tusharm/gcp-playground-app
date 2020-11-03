PROJECT:="gcp-playground"
GIT_COMMIT:=$(shell git rev-parse --short HEAD)

.PHONY: build_and_publish
build_and_publish:
	cloud-build-local --dryrun=false --bind-mount-source --substitutions SHORT_SHA=$(USER)-$(GIT_COMMIT) .

.PHONY: build-docker
build-docker:
	docker build -t $(PROJECT):$(GIT_COMMIT) .

.PHONY: run-docker
run-docker:
	docker run -p 8080:8080 $(PROJECT):$(GIT_COMMIT)


.PHONY: debug
debug:
	echo $(USER), $(GIT_COMMIT)
