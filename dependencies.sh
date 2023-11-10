#!/bin/bash
workdir="./enviroments"
cd $workdir || exit

#This Script is made for install all dependencies
pwd

#Install and create all conda enviroments 
conda create --name taxa_curation --file taxa_curation.yaml 
conda create --name blast_feed --file blast_feed.yaml 
conda create --name ANI --file ANI.yaml 
conda create --name wraggling_metrics --file wraggling_metrics.yaml
