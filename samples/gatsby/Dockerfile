#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Gatsby sample in production environments.
#--------------------------------------------------------------------------

# Node.js Docker base image - https://hub.docker.com/_/node
FROM node:16 AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Gatsby sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required Gatsby CLI package.
# https://www.gatsbyjs.com/docs/reference/gatsby-cli/
RUN yarn global add gatsby-cli && \
  gatsby telemetry --disable
