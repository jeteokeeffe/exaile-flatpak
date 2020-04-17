#!/bin/bash

FILE="org.exaile.exaile.json"
BUILD_DIR="flatpak-build"



flatpak-builder --run $BUILD_DIR $FILE exaile
