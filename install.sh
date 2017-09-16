#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PLIST_PATH="/Users/$USER/Library/LaunchAgents/local.deed.plist"

echo "Installing plist wifi watcher"
cat ./local.deed.plist | sed "s|@DEEDPATH|$CURRENT_DIR|g" > $PLIST_PATH
launchctl load ~/Library/LaunchAgents/local.deed.plist
echo "done."