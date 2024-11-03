#!/bin/bash

set -e -o pipefail

## function to check if a process is alive and running:

_isRunning() {
    ps -o comm= -C "$1" 2>/dev/null | grep -x "$1" >/dev/null 2>&1
}

if _isRunning TouchOSC; then
    echo "TouchOSC is running"
else
    echo "Starting TouchOSC"
    TouchOSC --general.ui.editor false ~/.config/TouchOSC/ChurchService.tosc &
    sleep 5
fi

if _isRunning obs; then
    echo "OBS is running"
else
    echo "Starting OBS"
    obs &
    sleep 10
fi

if _isRunning openlp; then
    echo "OpenLP is running"
else
    echo "Starting OpenLP"
    openlp &
    sleep 15
fi


# Move them out of the way
wmctrl -r "OBS 30" -t 5
wmctrl -r "OpenLP" -t 5
wmctrl -r "TouchOSC" -t 5

# Change desktop
wmctrl -s 0

# Move windows into position
wmctrl -R "TouchOSC"
wmctrl -R "OBS 30"
wmctrl -R "OpenLP"
