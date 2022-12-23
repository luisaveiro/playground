#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Eleventy sample.
#
# You can run the following make command:
#
# make eleventy
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
# The `eleventy` target executes the NPM `init` command to
# create a new Eleventy project.
#
# https://www.11ty.dev/docs/getting-started/
#--------------------------------------------------------------------------
eleventy:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:latest /bin/sh -c \
      "npm init -y && npm install --save-dev @11ty/eleventy && \
      echo '<!doctype html><html><head><title>Title</title></head><body><p>Hello, World!</p></body></html>' > index.html"
