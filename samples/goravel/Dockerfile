#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Goravel sample in production environments.
#--------------------------------------------------------------------------

# Golang Docker base image - https://hub.docker.com/_/golang
FROM golang:latest

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Goravel sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required Air package - https://github.com/cosmtrek/air#via-go-install
RUN go install github.com/cosmtrek/air@latest
