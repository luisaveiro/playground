#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Gatsby sample.
#
# You can run the following make command:
#
# make gatsby
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
# The `gatsby` target executes the Gatsby CLI `gatsby new` command
# to create a new Gatsby project.
#
# https://www.gatsbyjs.com/docs/reference/gatsby-cli/#new
#--------------------------------------------------------------------------
gatsby:
	docker build -t gatsby . && \
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    gatsby:latest /bin/sh -c "gatsby new ."
