#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Only provide one argument please"
    exit 1;
fi

LANG=$1
ULANG=$(echo "$LANG" | tr '[:lower:]' '[:upper:]')
LLANG=$(echo "$LANG" | tr '[:upper:]' '[:lower:]')

mkdir -p $LLANG
cp "./Makefile.template" "$LLANG/Makefile"
sed -i "" "s/%LLANG%/$LLANG/g" "$LLANG/Makefile"
sed -i "" "s/%ULANG%/$ULANG/g" "$LLANG/Makefile"
