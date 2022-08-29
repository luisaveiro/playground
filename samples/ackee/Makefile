#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Ackee sample.
#
# You can run the following make command:
#
# make ackee
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
# The `ackee` target clones the Ackee source code and installs dependencies
#
# https://github.com/electerious/Ackee/blob/master/docs/Get%20started.md
#--------------------------------------------------------------------------
ackee:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:latest /bin/sh -c \
      "git clone https://github.com/electerious/Ackee.git . && yarn install"
