#!/bin/bash

set -e -o pipefail

# Move them out of the way
wmctrl -r "OBS 30" -t 5
wmctrl -r "OpenLP" -t 5
wmctrl -r "TouchOSC" -t 5

# Change desktop
wmctrl -s 0

# Move them into position
# wmctrl -r "TouchOSC" -t 0
# wmctrl -r "OBS 30" -t 0
# wmctrl -r "OpenLP" -t 0

# Try another way to move them
wmctrl -R "TouchOSC"
wmctrl -R "OBS 30"
wmctrl -R "OpenLP"
