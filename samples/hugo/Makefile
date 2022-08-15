#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Hugo sample.
#
# You can run the following make command:
#
# make hugo
#--------------------------------------------------------------------------

# The name of the new workspace and initial project.
APP_NAME=hugo

# The project source code directory.
CODE_DIR=/code

# The GitHub url for the Hugo theme used for the project.
HUGO_THEME=https://github.com/adityatelange/hugo-PaperMod

# Include the DotEnv file if it exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

# Get the Hugo theme name from the GitHub url.
THEME_NAME=$(word 4,$(subst /, ,${HUGO_THEME}))

#--------------------------------------------------------------------------
# Makefile target.
#
# The `hugo` target executes the Hugo CLI `hugo new` command
# to create a new Hugo project.
#
# https://gohugo.io/getting-started/quick-start/#step-2-create-a-new-site
#--------------------------------------------------------------------------
hugo:
	docker build -t hugo . && \
	exec docker run -it --rm --name playground \
	-v $(PWD)${CODE_DIR}:/app/${APP_NAME} \
	-w="/app" \
	hugo:latest /bin/sh -c \
    "hugo new site ${APP_NAME} && \
    cd /app/${APP_NAME} && echo theme = \'${THEME_NAME}\' >> config.toml && \
    cd themes && git clone ${HUGO_THEME} --depth=1"
