#!/usr/bin/env sh
#
# Main executable shell script.

#######################################
# Executes the Yarn `create` command to
# create a new Quasar project using
# Quasar starter kit.
#
# Arguments:
#   directory.
#######################################
function installSample() {
  cd "${1}" && yarn create quasar
}

#######################################
# Move Quasar sample code to the app
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

  echo "Quasar sample is ready!"
}

# Execute main function...
main
