#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Express sample in production environments.
#--------------------------------------------------------------------------

# Node.js Docker base image - https://hub.docker.com/_/node
FROM node:alpine AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Express sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required Express CLI package.
# https://expressjs.com/en/starter/generator.html
RUN yarn global add express-generator
