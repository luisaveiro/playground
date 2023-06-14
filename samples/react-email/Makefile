#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the React Email sample.
#
# You can run the following make command:
#
# make react-email
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
# The `react-email` target executes the installer shell script to
# create a new React Email project using React Email starter kit.
#
# https://react.email/docs/getting-started/automatic-setup
#--------------------------------------------------------------------------
react-email:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -v $(PWD)/installer.sh:/setup/installer.sh \
    -w="/setup" \
    node:18-alpine /bin/sh -c "./installer.sh"
