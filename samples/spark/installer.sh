#!/usr/bin/env bash
#
# Main executable shell script.

#######################################
# Executes the Spark.NET CLI `spark new`
# command to create a new Spark.NET
# project using a supported Spark.NET
# template preset.
#
# Arguments:
#   directory
#   template
#######################################
function installSample() {
  cd "${1}" && spark new spark -t "${2}"
}

#######################################
# Move Spark sample code to the app
# directory.
#
# Arguments:
#   directory
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
# Run Spark sample migrations for the
# user tables.
#
# Arguments:
#   directory
#######################################
function runSampleDatabaseMigrations() {
  cd "${1}" && spark make migration User && spark migrate
}

#######################################
# Update Spark sample launch settings.
#
# Arguments:
#   directory
#######################################
function configureSample() {
  cd "${1}/Properties" && \
  sed -E 's/\"applicationUrl\": \"[^\"]+\"/\"applicationUrl\": \"http:\/\/0.0.0.0:80\"/' \
    launchSettings.json > temp; cat temp > launchSettings.json; rm temp
}

#######################################
# Main shell script.
#
# Arguments:
#   User input
#
# Outputs:
#   Writes message to stdout.
#######################################
function main() {
  local app_directory="/app"
  local template="${1}"

  installSample "${app_directory}" "${template}"
  moveSampleCode "${app_directory}"
  runSampleDatabaseMigrations "${app_directory}"
  configureSample "${app_directory}"

  echo "Spark.NET sample is ready!"
}

# Execute main function...
main "$@"
