#!/bin/bash

if [[ "$FLAVOR" == "linux" ]] ; then
    ./linux_install.sh
elif [[ "$FLAVOR" == "macos" ]] ; then
    ./macos_install.sh
fi
