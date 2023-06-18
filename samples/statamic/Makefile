#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Statamic sample.
#
# You can run the following make command:
#
# make statamic
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
# The `statamic` target executes the composer create-project command to
# create a new Statamic project using Statamic starter kit.
#
# https://statamic.dev/installing/ubuntu#create-a-new-statamic-application
#--------------------------------------------------------------------------
statamic:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    composer:latest /bin/sh -c \
      "composer create-project --prefer-dist statamic/statamic ."
