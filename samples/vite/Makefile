#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Vite sample.
#
# You can run the following make command:
#
# make vite-vanilla
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
  node:alpine /bin/sh -c

#--------------------------------------------------------------------------
# Makefile targets.
#
# Each target executes the Yarn `create` command to create a new
# Vite project using a supported Vite template preset.
#
# https://vitejs.dev/guide/#scaffolding-your-first-vite-project
#--------------------------------------------------------------------------
# Create a Vite project using the vanilla template preset.
vite-vanilla:
	exec ${docker_command} \
  "yarn create vite . --template vanilla && yarn install"

# Create a Vite project using the vanilla template preset
# with TypeScript support.
vite-vanilla-ts:
	exec ${docker_command} \
  "yarn create vite . --template vanilla-ts && yarn install"

# Create a Vite project using the Vue template preset.
vite-vue:
	exec ${docker_command} \
  "yarn create vite . --template vue && yarn install"

# Create a Vite project using the Vue template preset
# with TypeScript support.
vite-vue-ts:
	exec ${docker_command} \
  "yarn create vite . --template vue-ts && yarn install"

# Create a Vite project using the React template preset.
vite-react:
	exec ${docker_command} \
  "yarn create vite . --template react && yarn install"

# Create a Vite project using the React template preset
# with TypeScript support.
vite-react-ts:
	exec ${docker_command} \
  "yarn create vite . --template react-ts && yarn install"

# Create a Vite project using the Preact template preset.
vite-preact:
	exec ${docker_command} \
  "yarn create vite . --template preact && yarn install"

# Create a Vite project using the Preact template preset
# with TypeScript support.
vite-preact-ts:
	exec ${docker_command} \
  "yarn create vite . --template preact-ts && yarn install"

# Create a Vite project using the Lit template preset.
vite-lit:
	exec ${docker_command} \
  "yarn create vite . --template lit && yarn install"

# Create a Vite project using the Lit template preset
# with TypeScript support.
vite-lit-ts:
	exec ${docker_command} \
  "yarn create vite . --template lit-ts && yarn install"

# Create a Vite project using the Svelte template preset.
vite-svelte:
	exec ${docker_command} \
  "yarn create vite . --template svelte && yarn install"

# Create a Vite project using the Svelte template preset
# with TypeScript support.
vite-svelte-ts:
	exec ${docker_command} \
  "yarn create vite . --template svelte-ts && yarn install"
