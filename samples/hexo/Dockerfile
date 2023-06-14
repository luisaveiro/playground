#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Hexo sample in production environments.
#--------------------------------------------------------------------------

# Node.js Docker base image - https://hub.docker.com/_/node
FROM node:18-alpine AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Hexo sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required Hexo CLI package - https://hexo.io/docs/#Install-Hexo
RUN npm install hexo-cli -g
