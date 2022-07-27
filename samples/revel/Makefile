#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Revel sample.
#
# You can run the following make command:
#
# make revel
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
# The `revel` target executes the Revel CLI `revel new` command
# to create a new Revel project.
#
# http://revel.github.io/manual/tool.html#new
#--------------------------------------------------------------------------
revel:
	docker build -t revel . && \
	exec docker run -it --rm --name playground \
		-v $(PWD)${CODE_DIR}:/src/app \
		-w="/src" \
		revel:latest /bin/sh -c "revel new -a app"
