#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Django sample.
#
# You can run the following make command:
#
# make django
#--------------------------------------------------------------------------

# The name of the new workspace and initial project.
APP_NAME=django

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
# The `django` target executes the Django CLI `django-admin` command
# to create a new Django project.
#
# https://docs.djangoproject.com/en/4.1/ref/django-admin/#startproject
#--------------------------------------------------------------------------
django:
	docker build -t django . && \
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/src/app \
    -w="/src" \
    django:latest /bin/sh -c \
      ". venv/bin/activate && django-admin startproject ${APP_NAME} app"
