#!/bin/bash
# Musixmatch Intelligence SDK for Docker
# @author Loreto Parisi loreto@gmail.com

DS=$1
fname="${DS%%.*}"
ext="${DS#*.}"

echo Dataset:$DS
split -l $[ $(wc -l $DS | awk '{print $1}') * 80 / 100] $DS

DS_TRAIN="${fname}_train.$ext"
DS_TEST="${fname}_test.$ext"

mv xaa $DS_TRAIN
mv xab $DS_TEST
echo Training set:$DS_TRAIN
echo Test set:$DS_TEST
