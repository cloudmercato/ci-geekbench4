#!/bin/bash

if [[ "$DRONE_STAGE_OS" == "linux" ]] ; then
    wget -q http://cdn.geekbench.com/Geekbench-4.1.3-Linux.tar.gz
    tar xf Geekbench-4.1.3-Linux.tar.gz
    ln -s $(pwd)/Geekbench-4.1.3-Linux/geekbench4 ~/geekbench4
elif [[ "$DRONE_STAGE_OS" == "darwin" ]] ; then
    wget -q http://cdn.geekbench.com/Geekbench-4.4.2-Mac.zip
    unzip -o -q Geekbench-4.4.2-Mac.zip
    ln -fs $(pwd)/Geekbench\ 4.app/Contents/Resources/geekbench4 ~/geekbench4
fi
echo foo $geekbench_email $geekbench_key
