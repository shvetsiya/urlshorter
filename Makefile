APP = urlshorter
RELEASE ?= v0.0.0
RELEASE_DATE = $(shell date +%FT%T%Z)
PROJECT = github.com/shvetsiya/urlshorter

.PHONY: lint
lint:
	golangci-lint run -c golangci-lint.yaml

.PHONY: test
test:
	go test -race ./...

.PHONY: help
all: help
help: Makefile
	@echo
	@echo " Choose a command run in "$(PROJECT)":"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo
