#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Analog sample.
#
# You can run the following make command:
#
# make analog
#--------------------------------------------------------------------------

# The project source code directory.
CODE_DIR=/code

# Include the DotEnv file if it exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

#--------------------------------------------------------------------------
# Makefile targets.
#
# The `analog` target executes the Yarn `create` command to
# create a new Analog project using Analog starter kit.
#
# https://analogjs.org/docs/getting-started
#--------------------------------------------------------------------------
analog:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:18-alpine /bin/sh -c "yarn create analog . && yarn install"

