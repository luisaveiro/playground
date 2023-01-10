#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Hexo sample.
#
# You can run the following make command:
#
# make hexo
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
# The `hexo` target executes the Hexo CLI `hexo init` command
# to create a new Hexo project.
#
# https://hexo.io/docs/setup
#--------------------------------------------------------------------------
hexo:
	docker build -t hexo . && \
  exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    hexo:latest /bin/sh -c "hexo init"
