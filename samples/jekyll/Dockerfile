#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Jekyll sample in production environments.
#--------------------------------------------------------------------------

# Ruby Docker base image - https://hub.docker.com/_/ruby
FROM ruby:latest AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Jekyll sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required Jekyll package - https://jekyllrb.com/docs/
RUN gem install jekyll bundler
