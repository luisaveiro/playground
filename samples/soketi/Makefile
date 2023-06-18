#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Soketi sample.
#
# You can run the following make command:
#
# make soketi
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
# The `soketi` target clones the Soketi source code and installs
# dependencies
#
# https://docs.soketi.app/getting-started/installation/cli-installation
#--------------------------------------------------------------------------
soketi:
	git clone https://github.com/soketi/soketi.git $(PWD)${CODE_DIR} && \
  exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:16 /bin/sh -c "npm install"
