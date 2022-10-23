#!/usr/bin/env bash

readonly YOUR_DIR="/afs/cern.ch/user/s/sefernan/BashScripts"

if [[ ! $YOUR_DIR ]]; then
    echo >&2 "$YOUR_DIR does not exist or is not a directory"
    exit 1
fi

OLD_PWD=$PWD
cd "$YOUR_DIR"

i=0
for file in *
do
    if [[ -f $file ]]; then
        array[$i]=$file
        i=$(($i+1))
    fi
done
echo ${array[*]}
cd "$OLD_PWD"
exit 0
