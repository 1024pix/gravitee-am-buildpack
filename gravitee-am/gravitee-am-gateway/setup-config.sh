#!/bin/bash

echo -n "-- Setup gravitee-am-gateway config --"

INSTALL_FOLDER=${1:-}
if [[ -z "${INSTALL_FOLDER}" ]]; then
  echo -n "-----> Veuillez spécifier un répertoire i.e. '.' "
  exit 1
fi

echo -n "-----> Copying buildpack gravitee-am-gateway configuration ... "
CONFIG_FILE=./gravitee-am/$GRAVITEE_AM_MODULE/pix-config
echo '--- pwd'
pwd
ls ${CONFIG_FILE} 
echo '--- ls'
ls 
echo '--- ls app'
ls /app
cp ${CONFIG_FILE}/gravitee.yml $INSTALL_FOLDER/config/gravitee.yml
cp ${CONFIG_FILE}/logback.xml $INSTALL_FOLDER/config/logback.xml
echo "done"
