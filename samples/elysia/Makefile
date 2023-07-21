#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Elysia sample.
#
# You can run the following make command:
#
# make elysia
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
# The `elysia` target executes the Bun `create` command to
# create a new Elysia project using Elysia starter kit.
#
# https://elysiajs.com/quick-start.html
#--------------------------------------------------------------------------
elysia:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    oven/bun:latest /bin/sh -c "bun create elysia ."

