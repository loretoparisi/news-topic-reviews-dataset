#!/bin/bash

COL=$1
FILE=$2
SEP=$3
awk -v col="$COL" -F $"$SEP" '   {c[$col]++}
                 END{
                     p=1; for (i in c) { printf("%s %s'$SEP'%s\n",p,i,c[i]);p++ }
                 }' $FILE
