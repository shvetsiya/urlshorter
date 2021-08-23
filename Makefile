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