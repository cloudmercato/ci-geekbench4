#!/bin/bash

wget -q http://cdn.geekbench.com/Geekbench-4.1.3-Linux.tar.gz
tar xf Geekbench-4.1.3-Linux.tar.gz
ln -s $(pwd)/Geekbench-4.1.3-Linux/geekbench4 ~/geekbench4
