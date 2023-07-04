#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Ionic sample in production environments.
#--------------------------------------------------------------------------

# Node.js Docker base image - https://hub.docker.com/_/node
FROM node:lts-alpine AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Ionic sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required Ionic CLI package.
# https://ionicframework.com/docs/intro/cli
RUN npm install -g @ionic/cli
