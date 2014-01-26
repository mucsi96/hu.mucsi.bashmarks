#!/bin/sh
if [ ! -n "$SDIRS" ]; then
    SDIRS=~/dirs.log
fi
touch $SDIRS
RED="0;31m"
GREEN="0;33m"

source $SDIRS
target="$(eval $(echo echo $(echo \$DIR_$1)))"
echo $target