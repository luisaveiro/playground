#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Nuxt sample.
#
# You can run the following make command:
#
# make nuxt
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
# The `nuxt` target executes the Yarn `create` command to
# create a new Nuxt project using Nuxt starter kit.
#
# https://nuxtjs.org/docs/get-started/installation#using-create-nuxt-app
#--------------------------------------------------------------------------
nuxt:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:16-alpine /bin/sh -c "yarn create nuxt-app"
