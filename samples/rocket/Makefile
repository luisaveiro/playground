#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Rocket sample.
#
# You can run the following make command:
#
# make rocket
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
# The `rocket` target clones the Rocket framework source code.
#
# https://github.com/SergioBenitez/Rocket
#--------------------------------------------------------------------------
rocket:
	git clone https://github.com/SergioBenitez/Rocket $(PWD)${CODE_DIR}
