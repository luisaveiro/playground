#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Angular sample in production environments.
#--------------------------------------------------------------------------

# Node.js Docker base image - https://hub.docker.com/_/node
FROM node:alpine AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Angular sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required Angular CLI package - https://angular.io/cli
RUN yarn global add @angular/cli
