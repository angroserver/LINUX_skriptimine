#!/bin/bash
# Skript arvutab sisestatud täisarvu numbrite summa.

echo -n "Sisesta suvaline täisarv: "
read algne_arv

# Kasutame töötlemiseks arvu positiivset väärtust
arv=$algne_arv
if [ $arv -lt 0 ]; then
    arv=$((arv * -1))
fi

summa=0
while [ $arv -ne 0 ]; do
    jaak=$((arv % 10))
    summa=$((summa + jaak))
    arv=$((arv / 10))
done

echo "Arvu $algne_arv numbrite summa on $summa"
