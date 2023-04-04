.PHONY: all
.DEFAULT_GOAL := all

all: bin/toolz

bin:
	@mkdir -p $@

bin/toolz: $(shell find src -type f) settings.yml
	@bashly generate --env production
