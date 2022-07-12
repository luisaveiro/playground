#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Flask sample in production environments.
#--------------------------------------------------------------------------

# Python Docker base image - https://hub.docker.com/_/python
FROM python:latest AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Flask sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

WORKDIR /src

# Install required Flask package.
# https://flask.palletsprojects.com/en/latest/installation/
RUN python3 -m venv venv && \
  . venv/bin/activate && \
  pip install Flask
