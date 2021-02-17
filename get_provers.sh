#!/usr/bin/env sh

# get back requirements
apt-get install -y wget unzip

FRAMAC_VERSION=`frama-c -version|cut -d'.' -f 1`;

case $FRAMAC_VERSION in
    22)
        # cvc4
        wget -q -o cvc4 https://github.com/CVC4/CVC4/releases/download/1.7/cvc4-1.7-x86_64-linux-opt; 
        mv cvc4 /usr/bin/cvc4;
        chmod +x /usr/bin/cvc4;
        # z3
        wget -q https://github.com/Z3Prover/z3/releases/download/z3-4.8.6/z3-4.8.6-x64-ubuntu-16.04.zip
        unzip z3-4.8.6-x64-ubuntu-16.04.zip
        mv z3-4.8.6-x64-ubuntu-16.04/bin/z3 /usr/bin
        chmod +x /usr/bin/z3
        ;;
    21)
        # alt-ergo 2.0.0 & z3 4.4.1 (buster base)
        cat /etc/debian_version
        apt update
        apt install -y alt-ergo z3
        ;;
    *)
        ;;
esac

