#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Astro sample.
#
# You can run the following make command:
#
# make astro
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
# The `astro` target executes the Yarn `create` command to
# create a new Astro project using Astro starter kit.
#
# https://docs.astro.build/en/getting-started/#install-astro-locally
#--------------------------------------------------------------------------
astro:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:18 /bin/sh -c "yarn create astro ."
