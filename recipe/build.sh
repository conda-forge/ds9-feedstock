#!/usr/bin/env bash

set -eu

if [[ "$target_platform" == linux-* ]]; then
  ./unix/configure
  OUTPUT="bin/ds9"

else
  echo "PREFIX IS SET TO $PREFIX"
  ./macos/configure
  OUTPUT="bin/SAOImageDS9.app"

fi

make
mkdir -p $PREFIX/bin
cp $OUTPUT $PREFIX/bin/ds9
