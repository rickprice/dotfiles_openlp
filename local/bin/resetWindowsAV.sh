#!/bin/bash

set -e -o pipefail

# Move them out of the way
wmctrl -r "OBS 30" -t 5
wmctrl -r "OpenLP" -t 5
wmctrl -r "TouchOSC" -t 5

# Move them into position
wmctrl -r "TouchOSC" -t 0
wmctrl -r "OBS 30" -t 0
wmctrl -r "OpenLP" -t 0
