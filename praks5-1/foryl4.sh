#!/bin/bash
# Skript väljastab kõik kasutajanimed süsteemi /etc/passwd failist.

for user in $(cut -d: -f1 /etc/passwd); do
    echo "Kasutaja: $user"
done
