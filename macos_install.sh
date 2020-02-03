#!/bin/bash

wget -q http://cdn.geekbench.com/Geekbench-4.4.2-Mac.zip
unzip -o -q Geekbench-4.4.2-Mac.zip
ln -fs $(pwd)/Geekbench\ 4.app/Contents/Resources/geekbench4 ~/geekbench4
