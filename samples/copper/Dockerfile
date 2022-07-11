#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Copper sample in production environments.
#--------------------------------------------------------------------------

# Golang Docker base image - https://hub.docker.com/_/golang
FROM golang:latest

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Copper sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required Copper CLI package.
# https://docs.gocopper.dev/getting-started/installation
RUN go install github.com/gocopper/cli/cmd/copper@latest
