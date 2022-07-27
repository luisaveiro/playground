#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Revel sample in production environments.
#--------------------------------------------------------------------------

# Golang Docker base image - https://hub.docker.com/_/golang
FROM golang:latest

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Revel sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required Revel CLI package - https://github.com/revel/cmd#install
RUN go install github.com/revel/cmd/revel@latest
