#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the React Native sample.
#
# You can run the following make command:
#
# make react-native
#--------------------------------------------------------------------------

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
# The `react-native` target executes the NPM `create-expo-app` command to
# create a new React Native project using Expo starter kit.
#
# https://docs.expo.dev/get-started/create-a-project/
#--------------------------------------------------------------------------
react-native:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:lts-alpine /bin/sh -c \
      "npx --yes --no-update-notifier create-expo-app ."
