#!/bin/bash

#___________________________________________________________________________________________________
#                       This is a bash script for matching folders of samples 
#___________________________________________________________________________________________ryse-amp

rucio list-files group.phys-hdbs.mc16_13TeV.700347.Sh_2211_Wtaunu_H_maxHTpTV2_BFilter.HIGG4D2.17IsoCRBulb1_CxAOD.root | cut -b 19-61 | grep -v "SCOPE" | grep -i ".root" > list_test_nosort.txt

while read line; do

  echo $line

done < list_test_nosort.txt

sort list_test_nosort.txt > list1.txt

ls /eos/atlas/atlascerngroupdisk/phys-hdbs/diHiggs/bbtautau/lephad/Bulbasaur/group.phys-hdbs.mc16_13TeV.700347.Sh_2211_Wtaunu_H_maxHTpTV2_BFilter.HIGG4D2.17IsoCRBulb1_CxAOD.root > list2.txt

while read line2; do

  echo $line2

done < list2.txt

diff -s list1.txt list2.txt
