#!/bin/bash
# Skript kuvab Elroni reaalaja API andmete põhjal valitud marsruudi väljumised.

# 10. Värvikoodid (kasutame \e kuju)
RED='\e[0;31m'
GREEN='\e[0;32m'
NC='\e[0m' # Värvi lähtestamine

# 1. Marsruudi valimine
echo "ELRONI RONGIINFO"
echo ""
echo "Vali marsruut:"
echo "1 - Tartu -> Tallinn"
echo "2 - Tartu -> Valga"
echo "3 - Tartu -> Koidula"
echo ""
echo -n "Sisesta valik: "
read valik

# 2. Kontrolli kasutaja sisendit (tühjuse kontroll)
if [ -z "$valik" ]; then
    echo "Valik jäi sisestamata."
    exit 1
fi

# 1. Marsruudi määramine case abil
case "$valik" in
    1)
        lahtejaam="tartu"
        sihtjaam="Tallinn"
        ;;
    2)
        lahtejaam="tartu"
        sihtjaam="Valga"
        ;;
    3)
        lahtejaam="tartu"
        sihtjaam="Koidula"
        ;;
    *)
        echo "Vigane valik! Sellist marsruuti pole olemas."
        exit 1
        ;;
esac

# 3. Küsi andmed Elroni API-st
api_url="https://elron.ee/live-map/stop/$lahtejaam"
api_vastus=$(curl -s "$api_url")

# API päringu õnnestumise kontroll
if [ $? -ne 0 ] || [ -z "$api_vastus" ]; then
    echo "Elroni API päring ebaõnnestus."
    exit 1
fi

# 5. Filtreeri vajalikud rongid sihtjaama järgi
filtreeritud_rongid=$(echo "$api_vastus" | grep -o '{[^}]*"sihtjaam":"'"$sihtjaam"'"[^}]*}')

# 6. Kontrolli, kas sobivaid ronge leiti
if [ -z "$filtreeritud_rongid" ]; then
    echo "Sobivaid ronge ei leitud."
    exit 1
fi

# 7. Leia rongi väljumisajad (plaaniline_aeg)
valjumisajad=$(echo "$filtreeritud_rongid" | grep -o '"plaaniline_aeg":"[^"]*"' | cut -d'"' -f4)

# 8. Leia praegune kellaaeg ja kuva päis
praegune_aeg=$(date +%H:%M)

echo ""
echo "Tartu -> $sihtjaam"
echo "Praegune kellaaeg: $praegune_aeg"
echo ""
echo "Väljumised:"
echo ""

# 9. & 10. Võrdlus ja värviline väljund
echo "$valjumisajad" | while read -r aeg; do
    if [ -n "$aeg" ]; then
        if [[ "$aeg" < "$praegune_aeg" ]]; then
            echo -e "${RED}${aeg}  rong on juba väljunud${NC}"
        else
            echo -e "${GREEN}${aeg}  rong on veel ees${NC}"
        fi
    fi
done
