#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Tina sample.
#
# You can run the following make command:
#
# make tina
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
# The `tina` target executes the NPX `create` command to create a new
# Tina project using a Tina starter template.
#
# https://tina.io/docs/introduction/using-starter/
#--------------------------------------------------------------------------
tina:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:18 /bin/sh -c "npx create-tina-app@latest ."
