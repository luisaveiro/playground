#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Django sample in production environments.
#--------------------------------------------------------------------------

# Python Docker base image - https://hub.docker.com/_/python
FROM python:latest AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Django sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

WORKDIR /src

# Install required Django package.
# https://docs.djangoproject.com/en/4.1/topics/install/
RUN python3 -m venv venv && \
  . venv/bin/activate && \
  pip install Django
