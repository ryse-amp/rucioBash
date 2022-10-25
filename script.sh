#!/bin/bash

ls /eos/atlas/atlascerngroupdisk/phys-hdbs/diHiggs/bbtautau/lephad/Bulbasaur | grep -i ".root" > list_of_samples_in_sshfolder.txt

while read line; do

    echo $line

done < list_of_samples_in_sshfolder.txt
