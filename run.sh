#!/bin/bash
#
# Consistently apply environment config values
#
# Arguments:
#   path	Path to config file
#
# Usage:
#
#    - gentux/environment-config:
#        path: path/to/config

if [ $(which kubectl 2>/dev/null | grep -v "not found" | wc -l) -eq 0 ] ; then
    echo "kubectl is not installed" &&
    exit 1
fi

kubectl replace -f $WERCKER_ENVIRONMENT_CONFIG_PATH

echo "Environment config successfully replaced"
exit 0