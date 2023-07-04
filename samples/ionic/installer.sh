#!/usr/bin/env sh
#
# Main executable shell script.

#######################################
# Executes the Ionic `start` command to
# create a new Ionic project using the
# Ionic starter kit.
#
# Arguments:
#   directory.
#######################################
function installSample() {
  cd "${1}" && ionic start
}

#######################################
# Move Ionic sample code to the app
# directory.
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

  echo "Ionic sample is ready!"
}

# Execute main function...
main
