#!/bin/bash
# Pesastatud while ja for tsükkel tärnidest kolmnurga kuvamiseks

rida=1
while [ $rida -le 5 ]; do
    for (( i=1; i<=rida; i++ )); do
        echo -n "* "
    done
    echo "" # Uus rida
    rida=$((rida + 1))
done
