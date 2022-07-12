#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Fresh sample.
#
# You can run the following make command:
#
# make fresh
#--------------------------------------------------------------------------

# The name of the new workspace and initial project.
APP_NAME=fresh

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
# The `fresh` target executes the Fresh init script to
# create a new Fresh project using Fresh starter kit.
#
# https://fresh.deno.dev/docs/getting-started/create-a-project
#--------------------------------------------------------------------------
fresh:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
    -w="/app" \
    denoland/deno:latest /bin/sh -c \
      "deno run -A -r https://fresh.deno.dev ${APP_NAME}"
