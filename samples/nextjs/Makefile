#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Next.js sample.
#
# You can run the following make command:
#
# make nextjs
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
# The `nextjs` target executes the Yarn `create` command to
# create a new Next.js project using Next.js starter kit.
#
# https://nextjs.org/docs/getting-started#automatic-setup
#--------------------------------------------------------------------------
nextjs:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:18-alpine /bin/sh -c "yarn create next-app ."
