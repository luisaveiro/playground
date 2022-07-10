#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the ApostropheCMS sample in production environments.
#--------------------------------------------------------------------------

# Node.js Docker base image - https://hub.docker.com/_/node
FROM node:latest AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground ApostropheCMS sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required Apostrophe CLI package.
# https://v3.docs.apostrophecms.org/guide/setting-up.html
RUN yarn global add @apostrophecms/cli
