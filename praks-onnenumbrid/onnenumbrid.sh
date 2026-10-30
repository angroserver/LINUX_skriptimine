#!/bin/bash
# Skript leiab kõik õnnenumbrid vahemikus 1000-9999.
# Õnnenumber on arv, mille numbrite korduva liitmise tulemus on 7.

for ((i=1000; i<=9999; i++)); do
    arv=$i
    
    # Kordame numbrite liitmist seni, kuni tulemus on suurem kui 9 (st ei ole ühekohaline)
    while [ $arv -gt 9 ]; do
        summa=0
        temp=$arv
        
        # Arvutame hetkese arvu numbrite summa arvutuslikult (% 10 ja / 10)
        while [ $temp -gt 0 ]; do
            jaak=$((temp % 10))
            summa=$((summa + jaak))
            temp=$((temp / 10))
        done
        
        arv=$summa
    done
    
    # Kui korduva liitmise tulemus on 7, väljastame algse arvu i
    if [ $arv -eq 7 ]; then
        echo $i
    fi
done
