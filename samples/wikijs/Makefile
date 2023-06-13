#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Wiki.js sample.
#
# You can run the following make command:
#
# make wikijs
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
# The `wikijs` target clones the Wiki.js source code and installs
# dependencies
#
# https://github.com/requarks/wiki#readme
#--------------------------------------------------------------------------
wikijs:
	git clone https://github.com/requarks/wiki.git $(PWD)${CODE_DIR} && \
  cp $(PWD)/config/config.yml $(PWD)${CODE_DIR}/config.yml && \
  exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:16 /bin/sh -c "yarn install"
