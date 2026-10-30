#!/bin/bash
# Pesastatud tsüklid: break 2 katkestab mõlemad tsüklid.

for välimine in 1 2 3; do
    echo "Välimine tsükkel: $välimine"
    for sisemine in 1 2 3 4 5 6; do
        if [ $sisemine -eq 5 ]; then
            echo "Sisemine tsükkel jõudis 5-ni! Katkestan mõlemad tsüklid."
            break 2
        fi
        echo "  Sisemine tsükkel: $sisemine"
    done
done
