#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Soketi sample.
#
# You can run the following make command:
#
# make soketi
#--------------------------------------------------------------------------

# The Soketi app container name.
APP_CONTAINER_NAME="soketi_app"

# Map the app container exposed port to the host port.
APP_PORT=6001

# Map the server container exposed port to the host port.
SERVER_PORT=8080

# The project source code directory.
CODE_DIR=/code

# The server source code directory.
SERVER_DIR=/server

# Include the DotEnv file if it exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

#--------------------------------------------------------------------------
# Makefile target.
#
# The `soketi` target clones the Soketi source code and installs
# dependencies
#
# https://docs.soketi.app/getting-started/installation/cli-installation
#--------------------------------------------------------------------------
soketi-all: soketi-server soketi-websockets

soketi-server:
	exec docker run -it --rm --name playground \
    -v $(PWD)${SERVER_DIR}:/app \
    -w="/app" \
    node:alpine /bin/sh -c \
      "npm install && \
      cp .env.example .env && \
      sed -i 's/SOKETI_SERVER_PORT=.*/SOKETI_SERVER_PORT=${SERVER_PORT}/g' .env && \
      sed -i 's/SOKETI_APP_PORT=.*/SOKETI_APP_PORT=${APP_PORT}/g' .env && \
      sed -i 's/SOKETI_APP_CONTAINER_NAME=.*/SOKETI_APP_CONTAINER_NAME=${APP_CONTAINER_NAME}/g' .env"

soketi-websockets:
	git clone https://github.com/soketi/soketi.git $(PWD)${CODE_DIR} && \
  exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:16 /bin/sh -c "npm install"
