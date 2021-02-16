#!/usr/bin/env sh

echo "=== sourcing requested paths for Frama-C makefile"

set -x
export USBOTGHS_API_DIR=../usbotghs/api
export USBOTGHS_DEVHEADER_PATH=../usbotghs/framac/include/generated
export LIBSTD_API_DIR=../libstd/api
export EWOK_API_DIR=../libstd/framac/includes/ewok
set +x