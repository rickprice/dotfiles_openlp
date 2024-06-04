#!/bin/bash

set -e -o pipefail

PIPENV_PIPFILE=~/OpenLPOSCControl/Pipfile
exec pipenv run openLPOSCControl
