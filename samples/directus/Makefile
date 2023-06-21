#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Directus sample.
#
# You can run the following make command:
#
# make directus
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
# The `directus` target executes the NPM `init` command to
# create a new Directus project.
#
# https://docs.directus.io/self-hosted/quickstart.html#_1-installation
#--------------------------------------------------------------------------
directus:
	echo "\n\033[1;34mNOTICE:" \
  "\033[1;37mChoose SQLite as your database client.\033[0m\n" && \
  exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:18 /bin/sh -c "npm init directus-project ."
