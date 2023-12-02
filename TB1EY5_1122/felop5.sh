#!/bin/bash

function is_float() {
    [[ "$1" =~ ^[0-9]+(\.[0-9]+)?$ ]]
}

read -p "Adja meg az első oldal hosszát (lebegőpontos szám): " oldal1
read -p "Adja meg a második oldal hosszát (lebegőpontos szám): " oldal2

if ! (is_float "$oldal1" && is_float "$oldal2"); then
    echo "Hibás bemenet! Kérjük, adjon meg két lebegőpontos számot." >&2
    exit 1
fi

terulet=$(awk "BEGIN {printf \"%.2f\", $oldal1 * $oldal2}")

echo "A téglalap területe: $terulet"
