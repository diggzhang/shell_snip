#!/usr/bin/env bash

os=$(uname -s)
echo "$os"

DATEIS=""
if [[ "$os" == "Linux" ]]; then
    DATEIS="${date +%Y%m%d --date='-1 day -1 year'}"
elif [[ "$os" == "Darwin" ]]; then
    DATEIS=$(date -v-1d -v-1y +%Y%m%d)
else
    echo "unknown OS"
    exit 1
fi

echo "${DATEIS}"
