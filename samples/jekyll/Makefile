#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Jekyll sample.
#
# You can run the following make command:
#
# make jekyll
#--------------------------------------------------------------------------

# The name of the new workspace and initial project.
APP_NAME=jekyll

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
# The `jekyll` target executes the Jekyll CLI `jekyll new` command
# to create a new Jekyll project.
#
# https://jekyllrb.com/docs/
#--------------------------------------------------------------------------
jekyll:
	docker build -t jekyll . && \
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
    -w="/app" \
    jekyll:latest /bin/sh -c \
      "jekyll new ${APP_NAME} && cd ${APP_NAME} && bundle add webrick"
