#!/bin/sh

if [ ! -d "/out" ]; then
    echo "please mount /out to a target folder!"
    exit 1
fi

set -ex

URL=${1:-https://github.com/uncrustify/uncrustify/archive/uncrustify-0.72.0.tar.gz}

wget $URL
tar -xzf $(basename $URL)
cd uncrustify-uncrustify-*
mkdir build
cd build
cmake .. -DCMAKE_FIND_LIBRARY_SUFFIXES=".a" -DCMAKE_EXE_LINKER_FLAGS=" -static"
make
strip uncrustify
mv uncrustify /out
