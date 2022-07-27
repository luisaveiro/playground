#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Swift sample.
#
# You can run the following make command:
#
# make swift
#--------------------------------------------------------------------------

# Project source code directory
CODE_DIR=/code

# Include DotEnv file if exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

#--------------------------------------------------------------------------
# Makefile target.
#
# The `swift` target creates an executable Swift package.
#
# https://www.swift.org/getting-started/#using-the-package-manager
#--------------------------------------------------------------------------
swift:
	exec docker run \
    -it --rm \
    --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    swift:latest /bin/sh -c "swift package init --type executable"
