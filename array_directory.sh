#!/usr/bin/env bash                                                                                                                            
readonly YOUR_DIR="/eos/atlas/atlascerngroupdisk/phys-hdbs/diHiggs/bbtautau/lephad/Bulbasaur"

if [[ ! -d $YOUR_DIR ]]; then
    echo >&2 "$YOUR_DIR does not exist or is not a directory"
    exit 1
fi

OLD_PWD=$PWD
cd "$YOUR_DIR" || exit

i=0
for file in *
do
    if [[ -d $file  &&  "$file" == ".root" ]]; then
        array[i]=$file
        echo ${array[0]}
        i=$((i+1))
    fi
done
echo "${array[*]}"
cd "$OLD_PWD" || exit
