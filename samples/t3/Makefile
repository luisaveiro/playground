#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the T3 sample.
#
# You can run the following make command:
#
# make t3
#--------------------------------------------------------------------------

# The project source code directory.
CODE_DIR=/code

# Map the app container exposed port to the host port.
APP_PORT=80

# Include the DotEnv file if it exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

#--------------------------------------------------------------------------
# Makefile target.
#
# The `t3` target executes the Yarn `create` command to
# create a new T3 project using T3 starter kit.
#
# https://create.t3.gg/en/installation
#--------------------------------------------------------------------------
t3:
	echo "\n\033[1;34mNOTICE:" \
  "\033[1;37mPlease follow Authentication steps to configure nextAuth.\033[0m\n" && \
  open https://create.t3.gg/en/usage/first-steps#authentication && \
  exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    node:18-alpine /bin/sh -c \
      "yarn create t3-app --noGit --default . && \
      sed -i 's/NEXTAUTH_URL=.*/NEXTAUTH_URL=http:\/\/0.0.0.0:${APP_PORT}/g' .env"
