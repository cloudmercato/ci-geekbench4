#!/bin/bash

if [[ "$TRAVIS_OS_NAME" == "linux" ]] ; then
    wget -q http://cdn.geekbench.com/Geekbench-4.1.3-Linux.tar.gz
    tar xf Geekbench-4.1.3-Linux.tar.gz
    ln -s $(pwd)/Geekbench-4.1.3-Linux/geekbench4 ~/geekbench4
elif [[ "$TRAVIS_OS_NAME" == "osx" ]] ; then
    wget -q http://cdn.geekbench.com/Geekbench-4.4.2-Mac.zip
    unzip -o -q Geekbench-4.4.2-Mac.zip
    ln -fs $(pwd)/Geekbench\ 4.app/Contents/Resources/geekbench4 ~/geekbench4
fi
