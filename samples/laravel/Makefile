#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Laravel sample.
#
# You can run the following make command:
#
# make laravel
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
# The `laravel` target executes the composer create-project command to
# create a new Laravel project using Laravel starter kit.
#
# https://laravel.com/docs/master/installation#your-first-laravel-project
#--------------------------------------------------------------------------
laravel:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    composer:latest /bin/sh -c "composer create-project laravel/laravel ."
