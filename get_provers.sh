#!/usr/bin/env sh

# get back requirements
apt-get install -y wget unzip

FRAMAC_VERSION=`frama-c -version|cut -d'.' -f 1`;

if test $FRAMAC_VERSION -eq 22; then
    # cvc4
    wget -q -o cvc4 https://github.com/CVC4/CVC4/releases/download/1.7/cvc4-1.7-x86_64-linux-opt; 
    mv cvc4 /usr/bin/cvc4;
    chmod +x /usr/bin/cvc4;
    # z3
    wget -q https://github.com/Z3Prover/z3/releases/download/z3-4.8.6/z3-4.8.6-x64-ubuntu-16.04.zip
    unzip z3-4.8.6-x64-ubuntu-16.04.zip
    mv z3-4.8.6-x64-ubuntu-16.04/bin/z3 /usr/bin
    chmod +x /usr/bin/z3
else
    # z3
    wget -q https://github.com/Z3Prover/z3/releases/download/z3-4.8.3/z3-4.8.3.7f5d66c3c299-x64-ubuntu-16.04.zip;
    unzip z3-4.8.3.7f5d66c3c299-x64-ubuntu-16.04.zip;
    mv z3-4.8.3.7f5d66c3c299-x64-ubuntu-16.04/bin/z3 /usr/bin
    chmod +x /usr/bin/z3
fi

