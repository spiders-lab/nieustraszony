PROJECT_NAME = spiderslab
SHELL := /bin/sh
help:
	@echo "Please use 'make <target>' where <target> is one of"
	@echo "  all                      to setup the whole production environment for the project"
	@echo "  dev                      to setup the whole development environment for the project"
	@echo "  docker                   to setup the whole docker environment for the project"
	@echo "  deps             				install deps"
	@echo "  migrate                  run the migrations"
	@echo "  server                start phoenix server"
	@echo "  locales                  update locales"

.PHONY: deps migrate runserver locales

all: deps migrate runserver

dev: deps migrate runserver

docker: deps migrate runserver

# Command variables
MANAGE_CMD = mix

# Helper functions to display messagse
ECHO_BLUE = @echo "\033[33;34m $1\033[0m"
ECHO_RED = @echo "\033[33;31m $1\033[0m"

# The default server host local development
HOST ?= 0.0.0.0:4000


deps:
	( \
		$(MANAGE_CMD) deps.get; \
	)

migrate:
	( \
		$(MANAGE_CMD) ecto.migrate; \
	)

server:
	( \
		$(MANAGE_CMD) phx.server; \
	)

locales:
	( \
		$(MANAGE_CMD) gettext.extract; \
		$(MANAGE_CMD) gettext.merge priv/gettext; \
	)
