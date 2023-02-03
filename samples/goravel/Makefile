#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Goravel sample.
#
# You can run the following make command:
#
# make goravel
#--------------------------------------------------------------------------

# Map the app container exposed port to the host port. | default: 80
APP_PORT=80

# The project source code directory.
CODE_DIR=/code

# The MySQL database configuration. | default: goravel
DB_DATABASE=goravel

# Include the DotEnv file if it exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

#--------------------------------------------------------------------------
# Makefile target.
#
# The `goravel` target clones the Goravel Git repository and installs the
# dependencies and configures a new Goravel project using Goravel starter
# kit.
#
# https://www.goravel.dev/getting-started/installation.html
#--------------------------------------------------------------------------
goravel:
	git clone https://github.com/goravel/goravel.git $(PWD)${CODE_DIR} && \
  exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    golang:latest /bin/sh -c \
      "go mod tidy && \
      cp .env.example .env && \
      sed 's/APP_HOST=.*/APP_HOST=0.0.0.0:${APP_PORT}/g' .env > tmp; cat tmp > .env; rm tmp && \
      sed 's/DB_HOST=.*/DB_HOST=mysql/g' .env > tmp; cat tmp > .env; rm tmp && \
      sed 's/DB_DATABASE=.*/DB_DATABASE=${DB_DATABASE}/g' .env > tmp; cat tmp > .env; rm tmp && \
      sed 's/REDIS_HOST=.*/REDIS_HOST=redis/g' .env > tmp; cat tmp > .env; rm tmp && \
      go run . artisan key:generate"
