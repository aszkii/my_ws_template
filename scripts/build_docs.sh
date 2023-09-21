#!/bin/bash

# move to workspaceFolder
SCRIPT_DIR=$(cd $(dirname $0) && pwd)
DOCS_DIR=$(cd ${SCRIPT_DIR}/../docs && pwd)
cd ${DOCS_DIR}

# mkdocs
JUPYTER_PLATFORM_DIRS=1 mkdocs build -f ./mkdocs.yml -c || exit 1

# move site to desktop if desktop directory exists

if [ -e ${HOME}/Desktop ]; then
    mv  site ${HOME}/Desktop/site_$(date "+%m%d_%H%M%S")
    echo "move site directory to ${HOME}/Desktop."
fi
