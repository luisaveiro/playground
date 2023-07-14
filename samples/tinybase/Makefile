#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the TinyBase sample.
#
# You can run the following make command:
#
# make tinybase
#--------------------------------------------------------------------------

# The project source code directory.
CODE_DIR=/code

# Include the DotEnv file if it exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

# The Docker command to scaffold a Vite project.
docker_command=docker run -it --rm --name playground \
  -v $(PWD)${CODE_DIR}:/app \
  -w="/app" \
  node:18 /bin/sh -c

#--------------------------------------------------------------------------
# Makefile target.
#
# Each target executes the NPX `degit` command to create a new
# TinyBase project using a supported TinyBase template preset.
#
# https://tinybase.org/guides/the-basics/getting-started/
#--------------------------------------------------------------------------
# Create a TinyBase project using the vanilla TinyBase Vite template.
tinybase:
	exec ${docker_command} \
    "npx --yes --no-update-notifier degit tinyplex/vite-tinybase . && \
    yarn install"

# Create a TinyBase project using the vanilla TinyBase Vite template
# with TypeScript support.
tinybase-ts:
	exec ${docker_command} \
    "npx --yes --no-update-notifier degit tinyplex/vite-tinybase-ts . && \
    yarn install"

# Create a TinyBase project using the React TinyBase Vite template.
tinybase-react:
	exec ${docker_command} \
    "npx --yes --no-update-notifier degit tinyplex/vite-tinybase-react . && \
    yarn install"

# Create a TinyBase project using the React TinyBase Vite template
# with TypeScript support.
tinybase-react-ts:
	exec ${docker_command} \
    "npx --yes --no-update-notifier degit tinyplex/vite-tinybase-ts-react . && \
    yarn install"
