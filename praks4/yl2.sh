#!/bin/bash
# Skript arvutab reisijate ja kohtade arvu põhjal vajalike busside arvu.

echo -n "Sisesta reisijate arv: "
read reisijad

echo -n "Sisesta kohtade arv bussis: "
read kohad

# Arvutame täisbusside arvu ja ülejäänud reisijad
bussid=$((reisijad / kohad))
ylejaanud=$((reisijad % kohad))

# Kui keegi jäi maha, lisa üks buss juurde
if [ $ylejaanud -gt 0 ]; then
    bussid=$((bussid + 1))
fi

echo "Kokku on vaja $bussid bussi"

