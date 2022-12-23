#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Quasar sample in production environments.
#--------------------------------------------------------------------------

# Node.js Docker base image - https://hub.docker.com/_/node
FROM node:lts-alpine AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Quasar sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required Quasar CLI package - https://quasar.dev/start/quasar-cli
RUN yarn global add @quasar/cli
