#!/bin/bash
# Skript väljastab kasvava tärnidest kolmnurga.

echo -n "Sisesta ridade arv: "
read ridade_arv

for ((rida=1; rida<=ridade_arv; rida++)); do
    echo -n "$rida. "
    for ((tarn=1; tarn<=rida; tarn++)); do
        echo -n "*"
    done
    echo ""
done
