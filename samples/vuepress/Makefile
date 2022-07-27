#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the VuePress sample.
#
# You can run the following make command:
#
# make vuepress
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
# The `vuepress` target executes the Yarn `create` command to
# create a new VuePress project using VuePress starter kit.
#
# https://vuepress.vuejs.org/guide/getting-started.html#quick-start
#--------------------------------------------------------------------------
vuepress:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app/docs \
    -w="/app" \
    node:16-alpine /bin/sh -c \
      "yarn create vuepress-site . && cd docs && yarn install"
