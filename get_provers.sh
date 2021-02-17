#!/usr/bin/env bash

# get back requirements
apt-get install -y wget unzip

FRAMAC_VERSION=`frama-c -version|cut -d'.' -f 1`;

case $FRAMAC_VERSION in
    22)
        ;;
    21)
        ;;
    *)
        ;;
esac

# reinit fully why3 config
if test -f $HOME/.why3.conf; then
    rm -f $HOME/.why3.conf;
fi
why3 config --full-config
