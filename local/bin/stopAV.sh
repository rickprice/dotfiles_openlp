#!/bin/bash

set -e -o pipefail

export PIPENV_VENV_IN_PROJECT=1
export PIPENV_PIPFILE=~/OpenLPOSCControl/Pipfile
exec pipenv run openLPOSCControl
