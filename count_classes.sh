#!/bin/bash

COL=$1
FILE=$2
awk -v col="$COL" -F $'\t' '   {c[$col]++}
                 END{
                     for (i in c) printf("%s\t%s\n",i,c[i])
                 }' $FILE
