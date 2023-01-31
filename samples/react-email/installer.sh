#!/usr/bin/env sh
#
# Main executable shell script.

#######################################
# Install dependencies.
#
# Arguments:
#   directory.
#######################################
function installDependencies() {
  local app_directory="${1}"

  cd "${app_directory}" && yarn install
}

#######################################
# Executes the Yarn `create` command to
# create a new React Email project
# using React Email starter kit.
#
# Arguments:
#   directory.
#######################################
function installSample() {
  cd "${1}" && yarn create email
}

#######################################
# Move React Email sample code to the
# app directory.
#
# Arguments:
#   directory.
#######################################
function moveSampleCode() {
  local app_directory="${1}"

  for directory in "${app_directory}"/*; do
    if [[ -d "${directory}" ]]; then
      _=$(mv "${directory}"/* "${app_directory}"/ >/dev/null 2>/dev/null)
      _=$(mv "${directory}"/.* "${app_directory}"/ >/dev/null 2>/dev/null)

      rm -r "${directory}"
      break;
    fi
  done
}

#######################################
# Main shell script.
#
# Outputs:
#   Writes message to stdout.
#######################################
function main() {
  local app_directory="/app"

  installSample "${app_directory}"
  moveSampleCode "${app_directory}"
  installDependencies "${app_directory}"

  echo "React Email sample is ready!"
}

# Execute main function...
main
