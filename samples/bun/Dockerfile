#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Bun sample in production environments.
#--------------------------------------------------------------------------

# Ubuntu Docker base image - https://hub.docker.com/_/ubuntu
FROM ubuntu:latest AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Bun sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required dependencies.
RUN apt-get update && apt-get install -y curl unzip

# Install required Bun package - https://github.com/Jarred-Sumner/bun#install
RUN curl -fsSL https://bun.sh/install | bash

# Add the bun binary to PATH.
RUN ln -s /root/.bun/bin/bun /usr/local/bin/bun
