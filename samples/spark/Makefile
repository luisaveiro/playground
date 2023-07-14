#!make

#--------------------------------------------------------------------------
# The Makefile offers a developer-friendly approach
# to automate the set up of the Spark.NET sample.
#
# You can run the following make command:
#
# make spark
#--------------------------------------------------------------------------

# The project source code directory.
CODE_DIR=/code

# Include the DotEnv file if it exists.
ifneq (,$(wildcard ./.env))
	include .env
  export
endif

# The Docker command to scaffold a Spark.NET project.
docker_command=docker build -t spark . && \
	exec docker run -it --rm --name playground \
    -v $(PWD)${CODE_DIR}:/app \
    -v $(PWD)/installer.sh:/setup/installer.sh \
    -w="/setup" \
    spark:latest /bin/bash -c

#--------------------------------------------------------------------------
# Makefile target.
#
# Each target executes the Spark.NET CLI `spark new` command to create a
# new Spark.NET project using a supported Spark.NET template preset.
#
# https://spark-framework.net/docs/installation/
#--------------------------------------------------------------------------
# Create a Spark.NET project using the Blazer template.
spark-blazor:
	 ${docker_command} "./installer.sh blazor"

# Create a Spark.NET project using the MVC template.
spark-mvc:
	 ${docker_command} "./installer.sh mvc"
