#!/bin/bash                                                                                                                       

ls /eos/atlas/atlascerngroupdisk/phys-hdbs/diHiggs/bbtautau/lephad/Bulbasaur | grep -i $1 > script_with_one_entry.txt

while read line; do

    echo $line

done < script_with_one_entry.txt
