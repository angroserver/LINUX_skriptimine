#!/bin/bash
# Skript väljastab 5x5 tärnidest ruudu koos ridade numeratsiooniga.

for ((rida=1; rida<=5; rida++)); do
    echo -n "$rida. "
    for ((tarn=1; tarn<=5; tarn++)); do
        echo -n "*"
    done
    echo ""
done
