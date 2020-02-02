#!/bin/bash

if [[ "$TRAVIS_OS_NAME" == "linux" ]] ; then
    ./linux_install.sh
elif [[ "$TRAVIS_OS_NAME" == "osx" ]] ; then
    wget -q http://cdn.geekbench.com/Geekbench-4.4.2-Mac.zip
    unzip -o -q Geekbench-4.4.2-Mac.zip
    ln -fs $(pwd)/Geekbench\ 4.app/Contents/Resources/geekbench4 ~/geekbench4
fi
