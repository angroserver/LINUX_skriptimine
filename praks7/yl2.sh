#!/bin/bash
# Skript väljastab tärnidest kujundi vastavalt kasutaja sisestatud ridadele ja tärnide arvule.

echo -n "Sisesta ridade arv: "
read ridade_arv
echo -n "Sisesta tarnide arv reas: "
read tarnide_arv

for ((rida=1; rida<=ridade_arv; rida++)); do
    echo -n "$rida. "
    for ((tarn=1; tarn<=tarnide_arv; tarn++)); do
        echo -n "*"
    done
    echo ""
done
