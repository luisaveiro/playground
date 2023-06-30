#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the ASP.NET sample.
#
# You can run the following make command:
#
# make aspnet
#--------------------------------------------------------------------------

# Map the app container exposed port to the host port. | default: 80
APP_PORT=80

# The project source code directory.
CODE_DIR=/code

# Include the DotEnv file if it exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

#--------------------------------------------------------------------------
# Makefile target.
#
# The `aspnet` target executes the .NET `new` command to
# create a new ASP.NET project using webApp starter kit.
#
# https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-new
#--------------------------------------------------------------------------
aspnet:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    mcr.microsoft.com/dotnet/sdk:7.0 /bin/sh -c \
      "dotnet new webapp --no-https -f net7.0 && \
      cd Properties && \
      sed -E 's/\"applicationUrl\": \"[^\"]+\"/\"applicationUrl\": \"http:\/\/0.0.0.0:80\"/' \
      launchSettings.json > temp; cat temp > launchSettings.json; rm temp"
