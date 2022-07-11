#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Copper sample.
#
# You can run the following make command:
#
# make copper
#--------------------------------------------------------------------------

# The name of the new workspace and initial project.
APP_NAME=copper

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
# The `copper` target executes the Copper CLI `copper create` command
# to create a new Copper project.
#
# https://docs.gocopper.dev/getting-started/create-project
#--------------------------------------------------------------------------
# Create a Copper project using Go template preset.
copper:
	docker build -t copper . && \
	exec docker run -it --rm --name playground \
		-v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
		-w="/app" \
		copper:latest /bin/sh -c \
    "copper create github.com/${USER}/${APP_NAME}"

# Create a Copper project using Rest API template preset.
copper-api:
	docker build -t copper . && \
	exec docker run -it --rm --name playground \
		-v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
		-w="/app" \
		copper:latest /bin/sh -c \
    "copper create -frontend=none github.com/${USER}/${APP_NAME}"

# Create a Copper project using React template preset.
copper-react:
	docker build -t copper . && \
	exec docker run -it --rm --name playground \
		-v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
		-w="/app" \
		copper:latest /bin/sh -c \
    "copper create -frontend=vite:react github.com/${USER}/${APP_NAME}"

# Create a Copper project using React + Tailwind CSS template preset.
copper-react-tailwindcss:
	docker build -t copper . && \
	exec docker run -it --rm --name playground \
		-v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
		-w="/app" \
		copper:latest /bin/sh -c \
    "copper create -frontend=vite:react:tailwind github.com/${USER}/${APP_NAME}"

# Create a Copper project using Tailwind CSS template preset.
copper-tailwindcss:
	docker build -t copper . && \
	exec docker run -it --rm --name playground \
		-v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
		-w="/app" \
		copper:latest /bin/sh -c \
    "copper create -frontend=go:tailwind github.com/${USER}/${APP_NAME}"
