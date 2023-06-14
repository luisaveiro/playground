#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the JD App sample.
#
# You can run the following make command:
#
# make jd-app
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
# The `jd-app` target executes the installer shell script to
# create a new JD App project using JD App starter kit.
#
# https://github.com/OrJDev/create-jd-app#getting-started
#--------------------------------------------------------------------------
jd-app:
	exec docker run -it --rm --name playground \
  -v $(PWD)${CODE_DIR}:/app \
  -v $(PWD)/installer.sh:/setup/installer.sh \
  -w="/setup" \
  node:18-alpine /bin/sh -c "./installer.sh"
