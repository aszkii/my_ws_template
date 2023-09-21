#!/bin/bash

# move to workspaceFolder
SCRIPT_DIR=$(cd $(dirname $0) && pwd)
cd ${SCRIPT_DIR}

# pip install
pip install -U pip && pip install -r ../requirements.txt