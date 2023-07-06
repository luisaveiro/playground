#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Flutter sample in production environments.
#--------------------------------------------------------------------------

# Ubuntu Docker base image - https://hub.docker.com/_/ubuntu/
FROM ubuntu:latest AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Flutter sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Install Flutter dependencies.
# https://docs.flutter.dev/get-started/install/linux
RUN apt-get update \
  && apt-get install -y \
    curl \
    git \
    wget \
    unzip \
    libgconf-2-4 \
    gdb \
    libstdc++6 \
    libglu1-mesa \
    fonts-droid-fallback \
    lib32stdc++6 \
    python3 \
    gnupg2 \
  # Add the Google Chrome repository.
  && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
  # Import the Google Chrome repository’s GPG key.
  && wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && apt-get update \
  && apt-get install -y \
    # Install Google Chrome for Flutter web support.
    google-chrome-stable \
  && apt-get clean

# Download Flutter SDK from Flutter GitHub repo.
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter

# Set Flutter environment path
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Disable Google Analytics tracking.
RUN flutter config --no-analytics && dart --disable-analytics

# Get the latest version of the Flutter SDK.
RUN flutter channel stable && flutter upgrade

# Enable web in Flutter SDK.
RUN flutter config --enable-web

# Pre-download development binaries.
RUN flutter precache
