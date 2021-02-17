#!/usr/bin/env bash

# get back requirements
FRAMAC_VERSION=`frama-c -version|cut -d'.' -f 1`;

echo "==> requiring provers for Frama-C release $(FRAMAC_VERSION)"

case $FRAMAC_VERSION in
    22)
        apt install -y wget unzip;
        wget -q https://github.com/Z3Prover/z3/releases/download/z3-4.8.6/z3-4.8.6-x64-ubuntu-16.04.zip
        wget -q https://github.com/CVC4/CVC4/releases/download/1.7/cvc4-1.7-x86_64-linux-opt
        mv cvc4-1.7-x86_64-linux-opt /usr/local/bin/cvc4
        chmod +x /usr/local/bin/cvc4
        unzip z3-4.8.6-x64-ubuntu-16.04.zip
        mv z3-4.8.6-x64-ubuntu-16.04/bin/z3 /usr/local/bin/z3
        chmod +x  /usr/local/bin/z3
        if test -f $HOME/.why3.conf; then
            rm -f $HOME/.why3.conf;
        fi
        # full config seems not to work here
        why3 config --detect-provers
        ;;
    21)
        # reinit fully why3 config
        if test -f $HOME/.why3.conf; then
            rm -f $HOME/.why3.conf;
        fi
        why3 config --full-config
        ;;
    *)
        ;;
esac

