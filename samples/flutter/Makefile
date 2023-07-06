#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Flutter sample.
#
# You can run the following make command:
#
# make flutter
#--------------------------------------------------------------------------

# The name of the new workspace and initial project.
APP_NAME=flutter

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
# The `flutter` target executes the flutter CLI `ng new` command
# to create a new flutter project.
#
# https://flutter.io/cli/new
#--------------------------------------------------------------------------
flutter-web:
	docker build -t flutter . && \
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    flutter:latest /bin/sh -c \
      "flutter create --platforms web . && flutter clean"
