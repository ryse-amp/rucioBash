#!/bin/bash                                                                                                                                                                                                      
rucio list-files group.phys-hdbs.mc16_13TeV.700347.Sh_2211_Wtaunu_H_maxHTpTV2_BFilter.HIGG4D2.17IsoCRBulb1_CxAOD.root | cut -b 19-61 | grep -v "SCOPE" | grep -i ".root" > lista_of_script3.txt

while read line; do

  echo $line

done < lista_of_script3.txt
  
  
