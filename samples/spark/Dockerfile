#--------------------------------------------------------------------------
# ! The Dockerfile is configured for local environments.
# ! Do not deploy the Spark.NET sample in production environments.
#--------------------------------------------------------------------------

# .NET SDK Docker base image.
# https://hub.docker.com/_/microsoft-dotnet-sdk/
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS dev-image

# https://docs.docker.com/engine/reference/builder/#label
LABEL description="Dockerfile for Playground Spark.NET sample."
LABEL maintainer="Luis Aveiro"
LABEL version="1.0"

# Set .NET Tools environment path
ENV PATH="${PATH}:/root/.dotnet/tools"

# Install required dependencies and Spark CLI.
# https://spark-framework.net/docs/installation/
RUN dotnet tool install --global dotnet-ef \
  && dotnet tool install --global Spark.CLI \
  && spark install
