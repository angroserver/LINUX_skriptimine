#!/bin/bash
# Küsib kasutajalt sisendit seni, kuni kirjutatakse "lõpp"

sisend=""
while [ "$sisend" != "lõpp" ]; do
    echo -n "Sisesta midagi ('lõpp' lõpetab): "
    read sisend
    if [ "$sisend" != "lõpp" ]; me; then
        echo "Sa sisestasid: $sisend"
    fi
done
echo "Tsükkel lõppes!"

