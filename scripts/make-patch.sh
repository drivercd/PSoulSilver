#!/bin/sh
# Usage: scripts/make-patch.sh <base.nds> <modified.nds> <version>
set -e
[ $# -eq 3 ] || { echo "usage: $0 <base.nds> <modified.nds> <version>"; exit 1; }
mkdir -p patches
xdelta3 -e -f -s "$1" "$2" "patches/psoulsilver-$3.xdelta"
echo "Wrote patches/psoulsilver-$3.xdelta"
