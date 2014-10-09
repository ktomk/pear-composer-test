#!/bin/bash
#
# clean composer created composer.lock and vendor directory
#

WORK_DIR="$(pwd -L)"

if [ ! -e "composer.lock" -a ! -d "vendor" ]; then
    echo "nothing to remove from '${WORK_DIR}', exiting."
    exit;
fi

if [ ! "${1}" == "-f" ]; then
    echo "remove composer install from '${WORK_DIR}' ?"
    select yn in "Yes" "No"; do
        case $yn in
            Yes ) break;;
            No ) exit;;
        esac
    done
fi

if [ -e "composer.lock" ]; then
    echo "removing composer.lock"
    rm composer.lock
fi
if [ -d "vendor" ]; then
    echo "removing vendor directory"
    rm -rf vendor
fi
