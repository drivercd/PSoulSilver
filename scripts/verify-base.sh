#!/bin/sh
# Usage: scripts/verify-base.sh path/to/soulsilver.nds
# Set EXPECTED to the SHA-1 recorded in README.md.
EXPECTED=""
[ -n "$1" ] || { echo "usage: $0 <rom.nds>"; exit 1; }
ACTUAL=$(sha1sum "$1" | cut -d' ' -f1)
if [ -z "$EXPECTED" ]; then echo "No expected SHA-1 set yet. Your dump: $ACTUAL"; exit 0; fi
[ "$ACTUAL" = "$EXPECTED" ] && echo "Base ROM OK" || { echo "SHA-1 mismatch: $ACTUAL"; exit 1; }
