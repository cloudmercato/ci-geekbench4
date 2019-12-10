#!/bin/bash
iterations=${iterations:-3}
for i in $(seq 1 $iterations) ; do
    ~/geekbench4 --no-upload --export-json output-$i.json
    cb-client geekbench4 < output-$i.json
done
