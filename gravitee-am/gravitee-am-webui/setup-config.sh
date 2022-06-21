#!/bin/bash

echo -n "-- Setup gravitee-am webui config --"

INSTALL_FOLDER=${1:-}
if [[ -z "${INSTALL_FOLDER}" ]]; then
  echo -n "-----> Veuillez spécifier un répertoire i.e. '.' "
  exit 1
fi

echo -n "-----> Copying buildpack gravitee webui configuration ... "

echo "in progress"
