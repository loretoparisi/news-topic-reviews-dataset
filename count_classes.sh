#!/bin/bash

COL=$1
FILE=$2
SEP=$3
awk -v col="$COL" -F $"$SEP" '   {c[$col]++}
                 END{
                     for (i in c) printf("%s'$SEP'%s\n",i,c[i])
                 }' $FILE
