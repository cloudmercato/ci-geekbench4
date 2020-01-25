#!/bin/bash

if [[ "$SEMAPHORE_AGENT_MACHINE_OS_IMAGE" == "ubuntu"* ]] ; then
    wget -q http://cdn.geekbench.com/Geekbench-4.1.3-Linux.tar.gz
    tar xf Geekbench-4.1.3-Linux.tar.gz
    ln -s $(pwd)/Geekbench-4.1.3-Linux/geekbench4 ~/geekbench4
elif [[ "$SEMAPHORE_AGENT_MACHINE_OS_IMAGE" == "macos"* ]] ; then
    wget -q http://cdn.geekbench.com/Geekbench-4.4.2-Mac.zip
    unzip -o -q Geekbench-4.4.2-Mac.zip
    ln -fs $(pwd)/Geekbench\ 4.app/Contents/Resources/geekbench4 ~/geekbench4
fi
