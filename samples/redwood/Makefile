#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the RedwoodJS sample.
#
# You can run the following make command:
#
# make redwood
#--------------------------------------------------------------------------

# The project source code directory.
CODE_DIR=/code

# Include the DotEnv file if it exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

# The Docker command to scaffold a RedwoodJS project.
docker_command=docker run -it --rm --name playground \
  -v $(PWD)${CODE_DIR}:/app \
  -w="/app" \
  node:18-alpine /bin/sh -c

#--------------------------------------------------------------------------
# Makefile targets.
#
# Each target executes the Yarn `create` command to create a new
# RedwoodJS project to include/exclude TypeScript support.
#
# https://redwoodjs.com/docs/quick-start
#--------------------------------------------------------------------------
# Create a RedwoodJS project with vanilla JavaScript.
redwood:
	exec ${docker_command} \
    "yarn create redwood-app . --no-telemetry"

# Create a RedwoodJS project with TypeScript support.
redwood-ts:
	exec ${docker_command} \
    "yarn create redwood-app . --no-telemetry --typescript"
