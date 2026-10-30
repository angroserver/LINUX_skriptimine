#!/bin/bash
# Skript küsib kasutajalt täisarvu ja kontrollib selle paarsust.

echo -n "Sisesta suvaline täisarv: "
read arv

# Arvutame jäägi 2-ga jagamisel
jaak=$((arv % 2))

if [ $jaak -eq 0 ]; then
    echo "$arv on paaris"
else
    echo "$arv on paaritu"
fi
