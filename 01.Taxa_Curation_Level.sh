#!/bin/bash
workdir=~/phallet
cd $workdir 

#Create a directory for taxa selected

mkdir -p Taxa_Selected
source activate taxa_curation 
for genus_name in "$@";do
python3 01.Taxa_Curation_Level.py $genus_name
done
conda deactivate