#!/bin/bash
# Lõputu while true tsükkel break abil

tervitus_arv=0
while true; do
    echo "Tervitus #$((tervitus_arv + 1))"
    tervitus_arv=$((tervitus_arv + 1))
    
    if [ $tervitus_arv -eq 3 ]; then
        echo "Kolm tervitust tehtud, väljun!"
        break
    fi
done
