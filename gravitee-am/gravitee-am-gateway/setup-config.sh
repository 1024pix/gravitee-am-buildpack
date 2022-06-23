#!/bin/bash

echo -n "-- Setup gravitee-am-gateway config --"

INSTALL_FOLDER=${1:-}
if [[ -z "${INSTALL_FOLDER}" ]]; then
  echo -n "-----> Veuillez spécifier un répertoire i.e. '.' "
  exit 1
fi

echo -n "-----> Copying buildpack gravitee-am-gateway configuration ... "
CONFIG_FILE=./gravitee-am/$GRAVITEE_AM_MODULE/pix-config
cp ./gravitee-am/gravitee-am-gateway/pix-config/gravitee.yml $INSTALL_FOLDER/gravitee-am-gateway-standalone-3.17.2/config/gravitee.yml
cp ${CONFIG_FILE}/logback.xml $INSTALL_FOLDER/gravitee-am-gateway-standalone-3.17.2/config/logback.xml
less $INSTALL_FOLDER/gravitee-am-gateway-standalone-3.17.2/config/gravitee.yml
echo "done"
