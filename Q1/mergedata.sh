#!/bin/bash

cat data/part*.csv |
tr "\"" " " |
awk '$3 ~ /^[^A-Za-z0]/' > mergedata.csv

awk -F ',' '{b[$2] += $4 ; a[$2] += $3 } END {for (i in b) print i , b[i]/a[i] }' mergedata.csv |
sort -k1 > final.csv

