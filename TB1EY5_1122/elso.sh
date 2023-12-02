#!/bin/bash


if [ "$#" -ne 2 ]; then
    echo "Két számot kell megadni paraméterként!" >&2
    exit 1
fi


szam1=$1
szam2=$2


osszeg=$((szam1 + szam2))
kulonbseg=$((szam1 - szam2))
szorzat=$((szam1 * szam2))
hanyados=$(awk "BEGIN {printf \"%.2f\", $szam1/$szam2}")
maradek=$((szam1 % szam2))

echo "Összeg: $osszeg"
echo "Különbség: $kulonbseg"
echo "Szorzat: $szorzat"
echo "Hányados: $hanyados"
echo "Osztási maradék: $maradek"
