#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Nue sample.
#
# You can run the following make command:
#
# make nue
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
# The `nue` target clones the Nue source code and installs dependencies
#
# https://nuejs.org/docs/nuejs/getting-started.html
#--------------------------------------------------------------------------
nue:
	git clone https://github.com/nuejs/create-nue.git $(PWD)${CODE_DIR} && \
  exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    oven/bun:latest /bin/sh -c "bun install"
