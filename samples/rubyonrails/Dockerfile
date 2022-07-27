#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Ruby on Rails sample in production environments.
#--------------------------------------------------------------------------

# Ruby Docker base image - https://hub.docker.com/_/ruby
FROM ruby:latest AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Ruby on Rails sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install required Ruby on Rails package.
# https://guides.rubyonrails.org/getting_started.html
RUN gem install rails
