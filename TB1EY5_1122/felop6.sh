#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Adj meg egy fájlnevet paraméterként!" >&2
    exit 1
fi

file=$1

if [ ! -f "$file" ] || [ ! -r "$file" ]; then
    echo "A megadott fájl nem létezik vagy nem olvasható!" >&2
    exit 1
fi

read -p "Kérem adja meg a nevet: " nev

result=$(grep "^$nev," "$file" | cut -d',' -f1)

if [ -n "$result" ]; then
    echo "Az id a névhez tartozó id: $result"
else
    echo "Nem található id a megadott névhez a fájlban!"
fi
