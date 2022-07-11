#!/usr/bin/env bash
#
# Main executable shell script.

set -e

#######################################
# Main shell script.
#
# Arguments:
#   User input.
#
# Outputs:
#   Writes "Hello, World!" to stdout.
#######################################
function main() {
  echo -e "Hello, World!"
}

# Execute main function...
main $@
