#!/bin/bash

# untar your R installation
tar -xzf R361.tar.gz
tar -xzf packages.tar.gz

gzip -d title.ratings.tsv.gz
gzip -d title.basics.tsv.gz

awk '/movie/ {print}' title.basics.tsv | head -$(( ($1+1)*860 )) | tail -860 | tr "\\t" ";" > b.csv
cat title.ratings.tsv | tr "\\t" ";" > r.csv

# make sure the script will use your R installation, 
# and the working directory as its home location
export PATH=$PWD/R/bin:$PATH
export RHOME=$PWD/R
export R_LIBS=$PWD/packages

# run your script
Rscript R1.R $1

