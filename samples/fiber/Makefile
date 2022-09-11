#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Fiber sample.
#
# You can run the following make command:
#
# make fiber
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
# The `Fiber` target clones the Fiber receipes repository.
#
# https://github.com/gofiber/recipes
#--------------------------------------------------------------------------
fiber:
	git clone https://github.com/gofiber/recipes.git code
