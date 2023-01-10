#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Qwik sample.
#
# You can run the following make command:
#
# make qwik
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
# The `qwik` target executes the installer shell script to
# create a new Qwik project using Qwik starter kit.
#
# https://qwik.builder.io/docs/getting-started/#creating-an-app-using-the-cli
#--------------------------------------------------------------------------
qwik:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -v $(PWD)/installer.sh:/setup/installer.sh \
    -w="/setup" \
    node:alpine /bin/sh -c "./installer.sh"
