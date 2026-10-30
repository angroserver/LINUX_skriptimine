#!/bin/bash
# Skript jagab sõnad kasutades IFS eraldajat.

text="koer; kass; hiir"
IFS=';'

for word in $text; do
    echo "Loom: $word"
done
