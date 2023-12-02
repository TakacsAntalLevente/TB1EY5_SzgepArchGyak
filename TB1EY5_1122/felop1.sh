#!/bin/bash

function is_integer() {
    [[ "$1" =~ ^[0-9]+$ ]]
}

read -p "Adja meg az első oldal hosszát (egész szám): " oldal1
read -p "Adja meg a második oldal hosszát (egész szám): " oldal2

if ! (is_integer "$oldal1" && is_integer "$oldal2"); then
    echo "Hibás bemenet! Kérjük, adjon meg két egész számot." >&2
    exit 1
fi

terulet=$((oldal1 * oldal2))

echo "A téglalap területe: $terulet"
