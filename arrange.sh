#!/bin/bash

for LOWERCASE in {a..z}; do
    UPPERCASE=${LOWERCASE^^}
    for file in ./files/{$LOWERCASE,$UPPERCASE}*; do
        if [ -e "$file" ]; then
            mv $file "./$LOWERCASE"
        fi
    done
done