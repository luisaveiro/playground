#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Egg sample.
#
# You can run the following make command:
#
# make egg
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
# The `egg` target executes the NPM `init` command to
# create a new Egg project using Egg starter kit.
#
# https://www.eggjs.org/intro/quickstart
#--------------------------------------------------------------------------
egg:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:18-alpine /bin/sh -c "npm init egg && yarn install"
