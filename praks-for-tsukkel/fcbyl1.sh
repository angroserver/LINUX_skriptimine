#!/bin/bash
# Skript loendab 1 kuni 10 ja katkeb väärtuse 7 juures.

for ((i=1; i<=10; i++)); do
    if [ $i -eq 7 ]; then
        echo "Jõuti numbrini 7, katkestan tsükli!"
        break
    fi
    echo "Number: $i"
done
