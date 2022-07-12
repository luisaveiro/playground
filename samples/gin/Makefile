#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Gin sample.
#
# You can run the following make command:
#
# make gin
#--------------------------------------------------------------------------

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
# The `gin` target installs the Gin package and copy 
# Gin's starting template inside your Go workspace.
# 
# https://gin-gonic.com/docs/quickstart/#installation
#--------------------------------------------------------------------------
gin:
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -w="/app" \
    golang:latest /bin/sh -c \
      "go mod init app && go get -u github.com/gin-gonic/gin && \
      curl https://raw.githubusercontent.com/gin-gonic/examples/master/basic/main.go > main.go"
