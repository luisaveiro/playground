#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the AdonisJS sample.
#
# You can run the following make command:
#
# make adonisjs
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
# The `adonisjs` target executes the Yarn `create` command to
# create a new AdonisJS project using AdonisJS starter kit.
#
# https://docs.adonisjs.com/guides/installation#creating-a-new-project
#--------------------------------------------------------------------------
adonisjs:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:latest /bin/sh -c "yarn create adonis-ts-app ."
