#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Blitz sample in production environments.
#--------------------------------------------------------------------------

# Node.js Docker base image - https://hub.docker.com/_/node
FROM node:alpine AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Blitz sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required Blitz CLI package.
# https://blitzjs.com/docs/get-started#install-blitz
RUN yarn global add blitz
