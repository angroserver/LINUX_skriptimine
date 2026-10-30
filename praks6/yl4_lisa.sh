#!/bin/bash
# Skript kontrollib esimese 20 täisarvu puhul, kas tegemist on algarvuga.

for ((arv=1; arv<=20; arv++)); do
    if [ $arv -eq 1 ]; then
        echo "$arv - ei ole algarv"
    else
        jagaja=2
        jaak=$((arv % jagaja))
        while [ $jaak -ne 0 ]; do
            jagaja=$((jagaja + 1))
            jaak=$((arv % jagaja))
        done

        if [ $arv -eq $jagaja ]; then
            echo "$arv - on algarv"
        else
            echo "$arv - ei ole algarv"
        fi
    fi
done
