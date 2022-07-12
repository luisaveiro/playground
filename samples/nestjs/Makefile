#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Nest.JS sample.
#
# You can run the following make command:
#
# make nestjs
#--------------------------------------------------------------------------

# The name of the new workspace and initial project.
APP_NAME=nestjs

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
# The `nestjs` target executes the Nest.JS CLI `nest new` command
# to create a new Nest.JS project.
#
# https://docs.nestjs.com/#installation
#--------------------------------------------------------------------------
nestjs:
	docker build -t nestjs . && \
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
    -w="/app" \
    nestjs:latest /bin/sh -c "nest new ${APP_NAME}"
