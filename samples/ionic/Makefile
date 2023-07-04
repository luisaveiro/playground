#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Ionic sample.
#
# You can run the following make command:
#
# make ionic
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
# The `ionic` target executes the installer shell script to create a new
# Ionic project using the Ionic starter kit.
#
# https://ionicframework.com/docs/developing/starting
#--------------------------------------------------------------------------
ionic:
	echo "\n\033[1;34mNOTICE:" \
  "\033[1;37mDon't use the creation wizard option.\033[0m\n" && \
  docker build -t ionic . && \
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -v $(PWD)/installer.sh:/setup/installer.sh \
    -w="/setup" \
    ionic:latest /bin/sh -c "./installer.sh"
