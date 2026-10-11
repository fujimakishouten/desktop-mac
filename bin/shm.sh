#!/bin/sh

set -e

# SECTORS=16384000
SECTORS=24576000

if [ ! -d /Volumes/shm ]; then
    SHM=`hdid -nomount ram://${SECTORS}`
    diskutil erasedisk apfs shm $SHM
fi

