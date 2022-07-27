#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the SvelteKit sample.
#
# You can run the following make command:
#
# make sveltekit
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
# The `sveltekit` target executes the NPM `init` command to
# create a new SvelteKit project using SvelteKit starter kit.
#
# https://kit.svelte.dev/docs/introduction#getting-started
#--------------------------------------------------------------------------
sveltekit:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:alpine /bin/sh -c "npm init svelte . && yarn install"
