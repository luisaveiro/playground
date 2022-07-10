#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Angular sample.
#
# You can run the following make command:
#
# make angular
#--------------------------------------------------------------------------

# The name of the new workspace and initial project.
APP_NAME=angular

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
# The `angular` target executes the Angular CLI `ng new` command
# to create a new Angular project.
#
# https://angular.io/cli/new
#--------------------------------------------------------------------------
angular:
	docker build -t angular . && \
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    angular:latest /bin/sh -c \
      "ng new ${APP_NAME} --skip-git --package-manager yarn --directory . && \
      ng analytics off"
