#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Blitz sample.
#
# You can run the following make command:
#
# make blitz
#--------------------------------------------------------------------------

# The name of the new workspace and initial project.
APP_NAME=blitz

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
# The `blitz` target executes the Blitz CLI `blitz new` command
# to create a new Blitz project.
#
# https://blitzjs.com/docs/get-started#create-a-new-app
#--------------------------------------------------------------------------
blitz:
	docker build -t blitz . && \
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
    -w="/app" \
    blitz:latest /bin/sh -c "blitz new ${APP_NAME}"
