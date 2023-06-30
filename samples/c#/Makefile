#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the C# sample.
#
# You can run the following make command:
#
# make csharp
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
# The `csharp` target executes the .NET `new` command to
# create a new C# project using console starter kit.
#
# https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-new
#--------------------------------------------------------------------------
csharp:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    mcr.microsoft.com/dotnet/sdk:7.0 /bin/sh -c "dotnet new console"
