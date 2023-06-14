#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Docusaurus sample.
#
# You can run the following make command:
#
# make docusaurus-classic
#--------------------------------------------------------------------------

# The name of the new workspace and initial project.
APP_NAME=docusaurus

# The project source code directory.
CODE_DIR=/code

# Include the DotEnv file if it exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

# The Docker command to scaffold a Docusaurus project.
docker_command=docker run -it --rm --name playground \
  -v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
  -w="/app" \
  node:18-alpine /bin/sh -c

#--------------------------------------------------------------------------
# Makefile targets.
#
# Each target executes the Yarn `create` command to create a new
# Docusaurus project using a supported Docusaurus template preset.
#
# https://docusaurus.io/docs/installation#scaffold-project-website
#--------------------------------------------------------------------------
# Create a Docusaurus project using the classic template preset.
docusaurus-classic:
	exec ${docker_command} \
  "yarn create docusaurus ${APP_NAME} classic ."

# Create a Docusaurus project using classic template preset
# with TypeScript support.
docusaurus-classic-ts:
	exec ${docker_command} \
  "yarn create docusaurus ${APP_NAME} classic --typescript ."

# Create a Docusaurus project using the Facebook template preset.
docusaurus-facebook:
	exec ${docker_command} \
  "yarn create docusaurus ${APP_NAME} facebook ."

