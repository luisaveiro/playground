#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the VitePress sample.
#
# You can run the following make command:
#
# make vitepress
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
# The `vitepress` target executes the Yarn `init` command to
# create a new project and add VitePress and Vue as dev dependencies.
#
# https://vitepress.vuejs.org/guide/getting-started
#--------------------------------------------------------------------------
vitepress:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:18 /bin/sh -c \
      "yarn init && yarn add --dev vitepress vue && mkdir docs && \
      echo '# Hello, World!' >> docs/index.md"
