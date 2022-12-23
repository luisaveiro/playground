#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Quasar sample.
#
# You can run the following make command:
#
# make quasar
#--------------------------------------------------------------------------

# The project source code directory.
CODE_DIR=/code

# Include the DotEnv file if it exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

#--------------------------------------------------------------------------
# Makefile target.
#
# The `quasar` target executes the Yarn `create` command to create a new
# Quasar project using Quasar starter kit.
#
# https://quasar.dev/start/quasar-cli#installation-project-scaffolding
#--------------------------------------------------------------------------
quasar:
	docker build -t quasar . && \
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -v $(PWD)/installer.sh:/setup/installer.sh \
    -w="/setup" \
    quasar:latest /bin/sh -c "./installer.sh"
