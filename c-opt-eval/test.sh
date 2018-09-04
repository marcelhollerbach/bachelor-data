#!/bin/bash
libraries=( "libgif" "libjpeg" "libpng" "libtiff" "zlib" )

for i in "${libraries[@]}"
do
    objdump --no-show-raw-insn -d $i/after.so | perl -p -e 's/^\s+(\S+):\t//;' | sed 's/\s.*$//' > $i/after.so.txt
    objdump --no-show-raw-insn -d $i/pre.so   | perl -p -e 's/^\s+(\S+):\t//;' | sed 's/\s.*$//' > $i/pre.so.txt
done
