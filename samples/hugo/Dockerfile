#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Hugo sample in production environments.
#--------------------------------------------------------------------------

# Ubuntu Docker base image - https://hub.docker.com/_/ubuntu
FROM ubuntu:latest AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Hugo sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Avoid prompts while building
ENV DEBIAN_FRONTEND=noninteractive

# Install required Hugo CLI package
# https://gohugo.io/getting-started/installing/#debian-and-ubuntu
RUN apt-get update && apt-get install -y hugo
