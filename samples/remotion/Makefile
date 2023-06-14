#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Remotion sample.
#
# You can run the following make command:
#
# make remotion
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
# The `remotion` target executes the installer shell script to
# create a new Remotion project using Remotion starter kit.
#
# https://www.remotion.dev/docs/#installation
#--------------------------------------------------------------------------
remotion:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -v $(PWD)/installer.sh:/setup/installer.sh \
    -w="/setup" \
    node:18-alpine /bin/sh -c "./installer.sh"
