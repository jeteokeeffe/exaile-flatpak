#!/bin/bash
#
#
# https://raw.githubusercontent.com/flatpak/flatpak-builder-tools/master/pip/flatpak-pip-generator
# flatpak-pip-generator --requirements-file=/the/path/to/requirements.txt --output pypi-dependencies

FILE="org.exaile.exaile.json"
BUILD_DIR="flatpak-build"
#USER="--user"
USER=""
STOP_MODULE="python3-PyGObject"

#STOP_AT="--stop-at=$STOP_MODULE --build-shell=$STOP_MODULE"
STOP_AT=""

flatpak-builder -v --install-deps-from=flathub --install $USER $STOP_AT --force-clean $BUILD_DIR $FILE
#flatpak-builder -v --install-deps-from=flathub  $USER $STOP_AT --force-clean $BUILD_DIR $FILE sh
