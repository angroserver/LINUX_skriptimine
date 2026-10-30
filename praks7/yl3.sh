#!/bin/bash
# Skript väljastab tärnidest raami (õõnsa ristküliku).

echo -n "Sisesta ridade arv: "
read ridade_arv
echo -n "Sisesta tarnide arv reas: "
read tarnide_arv

for ((rida=1; rida<=ridade_arv; rida++)); do
    echo -n "$rida. "
    for ((tarn=1; tarn<=tarnide_arv; tarn++)); do
        if [ $rida -eq 1 -o $rida -eq $ridade_arv -o $tarn -eq 1 -o $tarn -eq $tarnide_arv ]; then
            echo -n "*"
        else
            echo -n " "
        fi
    done
    echo ""
done
