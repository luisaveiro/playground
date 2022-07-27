#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Ruby on Rails sample.
#
# You can run the following make command:
#
# make rubyonrails
#--------------------------------------------------------------------------

# The name of the new workspace and initial project.
APP_NAME=rubyonrails

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
# The `rubyonrails` target executes the Rails CLI `rails new` command
# to create a new Ruby on Rails project.
#
# https://guides.rubyonrails.org/getting_started.html
#--------------------------------------------------------------------------
rubyonrails:
	docker build -t rubyonrails . && \
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
    -w="/app" \
    rubyonrails:latest /bin/sh -c "rails new ${APP_NAME}"
