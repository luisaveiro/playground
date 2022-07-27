#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Remix sample.
#
# You can run the following make command:
#
# make remix-blue-stack
#--------------------------------------------------------------------------

# The project source code directory.
CODE_DIR=/code

# Include the DotEnv file if it exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

# The Docker command to scaffold a Remix project.
docker_command=docker run -it --rm --name playground \
  -v $(PWD)${CODE_DIR}:/app \
  -w="/app" \
  node:alpine /bin/sh -c

#--------------------------------------------------------------------------
# Makefile targets.
#
# Each target executes the NPX `create` command to create a new
# Remix project using a supported Remix template preset.
#
# https://remix.run/docs/en/v1/tutorials/blog#creating-the-project
#--------------------------------------------------------------------------
# Create a Remix project using the Blues Stack template preset.
remix-blue-stack:
	exec ${docker_command} \
  "npx create-remix --template remix-run/blue-stack ."

# Create a Remix project using the Indie Stack template preset.
remix-indie-stack:
	exec ${docker_command} \
  "npx create-remix --template remix-run/indie-stack ."

# Create a Remix project using the Grunge Stack template preset.
remix-grunge-stack:
	exec ${docker_command} \
  "npx create-remix --template remix-run/grunge-stack ."
