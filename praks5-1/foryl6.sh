#!/bin/bash
# Skript loob näidisfailid ja väljastab kõik .txt failide nimed.

touch a.txt b.txt c.txt

for file in *.txt; do
    echo "Leidsin faili: $file"
done
