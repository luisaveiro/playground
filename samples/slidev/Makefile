#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Slidev sample.
#
# You can run the following make command:
#
# make slidev
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
# The `slidev` target installs Slidev dependencies
# and copy the example template.
#
# https://sli.dev/guide/install.html#starter-template
#--------------------------------------------------------------------------
slidev:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:alpine /bin/sh -c \
      "yarn add @slidev/cli \
      @slidev/theme-default \
      @slidev/theme-default \
      @slidev/theme-seriph && \
      cp ./node_modules/@slidev/cli/template.md ./slides.md"
