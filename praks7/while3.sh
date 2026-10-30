#!/bin/bash
# Loe faili rida-rea haaval while-tsükliga

# Tekitame ajutise andmefaili
echo -e "Esimene rida\nTeine rida\nKolmas rida" > andmed.txt

while read -r rida; do
    echo "Loetud rida: $rida"
done < andmed.txt

rm andmed.txt

