#!/usr/bin/env sh

FRAMAC_VERSION=`frama-c -version|cut -d'.' -f 1`;

echo "=== sourcing requested paths for Frama-C makefile"

set -x
export USBOTGHS_DIR=../usbotghs/api
export USBOTGHS_DEVHEADER_PATH=../usbotghs/framac/include
export LIBSTD_API_DIR=../libstd/api
export LIBUSB_DIR=../libusbctrl/api
export EWOK_API_DIR=../libstd/framac/includes/ewok
case $FRAMAC_VERSION in
    22)
        export FRAMAC_WP_PROVERS=alt-ergo,z3
        ;;
    21)
        export FRAMAC_WP_PROVERS=alt-ergo,z3
        ;;
    *)
        export FRAMAC_WP_PROVERS=alt-ergo
        ;;
esac
set +x
