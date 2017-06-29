#!/usr/bin/env bash
#
# Copyright (c) 2017-present, Loreto Parisi
# All rights reserved.
normalize_text() {
  tr '[:upper:]' '[:lower:]' | \
    sed -e "s/'/ ' /g" -e 's/"//g' -e 's/\./ \. /g' -e 's/<br \/>/ /g' \
        -e 's/,/ , /g' -e 's/(/ ( /g' -e 's/)/ ) /g' -e 's/\!/ \! /g' \
        -e 's/\?/ \? /g' -e 's/\;/ /g' -e 's/\:/ /g' | tr -s " "
}
cat $1 | normalize_text > $2
