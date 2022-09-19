#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Lume sample.
#
# You can run the following make command:
#
# make lume
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
# The `lume` target executes the Lume init script to
# create a new Lume project using Lume starter kit.
#
# https://lume.land/docs/overview/installation/
#--------------------------------------------------------------------------
lume:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    denoland/deno:latest /bin/sh -c \
      "deno run -A https://deno.land/x/lume/init.ts && \
      echo 'Hello, World!' >> index.md"
