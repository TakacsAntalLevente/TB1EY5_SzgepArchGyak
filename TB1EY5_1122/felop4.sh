#!/bin/bash

read -p "Kérem adja meg a születési dátumát (yyyy.mm.dd): " szuletesi_datum


if ! [[ $szuletesi_datum =~ ^[0-9]{4}\.[0-9]{2}\.[0-9]{2}$ ]]; then
    echo "Hibás dátum. Kérjük, használja a yyyy.mm.dd formátumot." >&2
    exit 1
fi

ó
aktualis_datum=$(date "+%Y.%m.%d")

ó
if ! date -d "$szuletesi_datum" > /dev/null 2>&1; then
    echo "Hibás dátum! Kérjük, adjon meg érvényes dátumot." >&2
    exit 1
fi

ó
eletkor=$(date -d "$aktualis_datum" +%Y -d "$szuletesi_datum")
eletkor=$(( $(date "+%Y") - $eletkor ))


echo "Az Ön életkora: $eletkor év."
