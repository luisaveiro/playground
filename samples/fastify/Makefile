#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Fastify sample.
#
# You can run the following make command:
#
# make fastify
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
# The `Fastify` target executes the NPM `init` command to
# create a new Fastify project using Fastify starter kit.
#
# https://www.fastify.io/docs/latest/Guides/Getting-Started/#install
#--------------------------------------------------------------------------
fastify:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:18 /bin/sh -c "npm init fastify && npm install"
