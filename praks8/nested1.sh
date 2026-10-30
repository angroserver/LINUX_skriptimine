#!/bin/bash
# Pesastatud for-tsükkel: prindib väikese korrutustabeli (1 kuni 3)

for i in 1 2 3; do
    for j in 1 2 3; do
        tulemus=$((i * j))
        echo -n "$i x $j = $tulemus   "
    done
    echo "" # Uus rida pärast sisemist tsüklit
done
