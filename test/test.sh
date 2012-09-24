#!/bin/sh

set -e

TMPDIR=${TMPDIR:-/tmp}

Run ()
{
    echo "$*"
    shift
    eval "$@"
}

TMPBASE=$TMPDIR/tmp.$$
file=$TMPBASE.archive.kgb

trap "rm -f $TMPBASE*" 0 1 2 3 15

Run ":: TEST create archive:"  kgb $file .

cd /tmp
Run ":: TEST extract archive:" kgb $file

# End of file
