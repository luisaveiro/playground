#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Solid sample.
#
# You can run the following make command:
#
# make solid
#--------------------------------------------------------------------------

# The project source code directory.
CODE_DIR=/code

# Include the DotEnv file if it exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

# The Docker command to scaffold a Solid project.
docker_command=docker run -it --rm --name playground \
  -v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
  -w="/app" \
  node:18 /bin/sh -c

#--------------------------------------------------------------------------
# Makefile targets.
#
# Each target executes the NPX `degit` command to create a new
# Solid project using a supported Solid template preset.
#
# https://github.com/solidjs/templates
#--------------------------------------------------------------------------
# Create a Solid project with vanilla JavaScript.
solid:
	exec ${docker_command} \
  "npx degit solidjs/templates/js . && yarn install"

# Create a Solid project with TypeScript support.
solid-ts:
	exec ${docker_command} \
  "npx degit solidjs/templates/ts . && yarn install"

# Create a Solid project using the Bootstrap 5 template preset
# with TypeScript support.
solid-bootstrap-ts:
	exec ${docker_command} \
  "npx degit solidjs/templates/ts-bootstrap . && yarn install"

# Create a Solid project using the minimal template preset
# with TypeScript support.
solid-minimal-ts:
	exec ${docker_command} \
  "npx degit solidjs/templates/ts-minimal . && yarn install"

# Create a Solid project using the SASS template preset
# with TypeScript support.
solid-sass-ts:
	exec ${docker_command} \
  "npx degit solidjs/templates/ts-sass . && yarn install"

# Create a Solid project using the Tailwind CSS template preset
# with TypeScript support.
solid-tailwindcss-ts:
	exec ${docker_command} \
  "npx degit solidjs/templates/ts-tailwindcss . && yarn install"

# Create a Solid project using the Windi CSS template preset
# with TypeScript support.
solid-windicss-ts:
	exec ${docker_command} \
  "npx degit solidjs/templates/ts-windicss . && yarn install"

# Create a Solid project using the Windi CSS + routing template preset
# with TypeScript support.
solid-windicss-router-ts:
	exec ${docker_command} \
  "npx degit solidjs/templates/ts-router . && yarn install"

# Create a Solid project using the unocss template preset
# with TypeScript support.
solid-unocss-ts:
	exec ${docker_command} \
  "npx degit solidjs/templates/ts-unocss . && yarn install"

# Create a Solid project using the uvu template preset
# with TypeScript support.
solid-uvu-ts:
	exec ${docker_command} \
  "npx degit solidjs/templates/ts-uvu . && yarn install"

# Create a Solid project using the Vitest template preset.
solid-vitest:
	exec ${docker_command} \
  "npx degit solidjs/templates/js-vitest . && yarn install"

# Create a Solid project using the Vitest template preset
# with TypeScript support.
solid-vitest-ts:
	exec ${docker_command} \
  "npx degit solidjs/templates/ts-vitest . && yarn install"
