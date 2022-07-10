#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the ApostropheCMS sample.
#
# You can run the following make command:
#
# make apostrophe
#--------------------------------------------------------------------------

# The name of the new workspace and initial project.
APP_NAME=apostrophe

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
# The `apostrophe` target executes the Apostrophe CLI `apos create`
# command to create a new ApostropheCMS project.
#
# https://v3.docs.apostrophecms.org/guide/setting-up.html
#--------------------------------------------------------------------------
apostrophe:
	docker build -t apostrophe . && \
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
    -w="/app" \
    apostrophe:latest /bin/sh -c "apos create ${APP_NAME}"
