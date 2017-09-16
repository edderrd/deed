#!/bin/bash

## based on https://www.schiff.io/blog/2017/08/31/automating-slack-status-launchd

SSID=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}'`
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ACTIONS_DIR="${CURRENT_DIR}/../actions/wifi"

if [[ -s "$CURRENT_DIR/../secrets.sh" ]]; then
    . "$CURRENT_DIR/../secrets.sh"
fi

if [ -d "$ACTIONS_DIR/$SSID/" ]; then
    for SCRIPT in $ACTIONS_DIR/$SSID/*; do
        echo "executing ${SCRIPT}"
        [ -f "$SCRIPT" ] && [ -x "$SCRIPT" ] && "$SCRIPT"
    done
fi
