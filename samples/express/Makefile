#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Express sample.
#
# You can run the following make command:
#
# make express
#--------------------------------------------------------------------------

# The name of the new workspace and initial project.
APP_NAME=express

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
# The `express` target uses the express-generator tool
# to create a new Express project.
#
# https://expressjs.com/en/starter/generator.html
#--------------------------------------------------------------------------
express:
	docker build -t express . && \
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
    -w="/app" \
    express:latest /bin/sh -c \
      "express ${APP_NAME} && cd ${APP_NAME} && yarn install"
