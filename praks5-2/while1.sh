#!/bin/bash
# Lihtne while-tsükli näide loenduriga

i=1
while [ $i -le 5 ]; do
    echo "Loendur: $i"
    i=$((i + 1))
done
