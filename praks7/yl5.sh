#!/bin/bash
# Skript väljastab nullide ja tärnidega joondatud kujundi.

echo -n "Sisesta ridade arv: "
read ridade_arv

for ((rida=1; rida<=ridade_arv; rida++)); do
    echo -n "$rida. "
    
    # Nullide väljastamine (kokku: ridade_arv - rida)
    nullide_arv=$((ridade_arv - rida))
    for ((n=1; n<=nullide_arv; n++)); do
        echo -n "0"
    done
    
    # Tärnide väljastamine (kokku: rida)
    for ((t=1; t<=rida; t++)); do
        echo -n "*"
    done
    
    echo ""
done
