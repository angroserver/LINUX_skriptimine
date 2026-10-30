#!/bin/bash
# Pesastatud tsükkel kaustade ja nende sisu simuleerimiseks

for kaust in "Kaust_A" "Kaust_B"; do
    echo "Töötlen kausta: $kaust"
    for fail in "fail1.txt" "fail2.txt"; do
        echo "  --> Töötlen faili: $kaust/$fail"
    done
done
