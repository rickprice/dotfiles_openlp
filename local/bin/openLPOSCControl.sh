#!/bin/bash

set -e -o pipefail

PIPENV_VENV_IN_PROJECT=1
PIPENV_PIPFILE=~/OpenLPOSCControl/Pipfile
exec pipenv run openLPOSCControl
