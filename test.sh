#!/bin/bash

cd out

LANGS=$(find . -mindepth 1)
EXE_LANGS=""

for lang in $LANGS; do
    if [[ -x $lang ]]; then
        EXE_LANGS+=" $lang"
    fi
done

echo $EXE_LANGS

hyperfine --warmup 2 --min-runs 2 --sort mean-time $EXE_LANGS --export-markdown ../timings.md
