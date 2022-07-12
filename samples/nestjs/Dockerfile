#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the NestJS sample in production environments.
#--------------------------------------------------------------------------

# Node.js Docker base image - https://hub.docker.com/_/node
FROM node:alpine AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground NestJS sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required NestJS CLI package - https://docs.nestjs.com/cli/overview
RUN yarn global add @nestjs/cli
