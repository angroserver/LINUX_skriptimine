#!/bin/bash
# Skript arvutab 10 esimese täisarvu hulgas olevate paarisarvude summa.

summa=0

for ((arv=1; arv<=10; arv++)); do
    jaak=$((arv % 2))
    if [ $jaak -eq 0 ]; then
        summa=$((summa + arv))
    fi
done

echo "Arvude vahemikus 1 kuni 10 (kaasaarvutud) paarisarvude summa on: $summa"
