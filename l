#!/bin/sh
if [ ! -n "$SDIRS" ]; then
    SDIRS=~/.bashmarks
fi
touch $SDIRS
source $SDIRS
env | sort | awk '/DIR_.+/{split(substr($0,5),parts,"="); printf("\033[0;33m%-20s\033[0m %s\n", parts[1], parts[2]);}'