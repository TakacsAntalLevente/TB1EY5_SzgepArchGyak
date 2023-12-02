#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Adj meg egy nevet paraméterként!" >&2
    exit 1
fi

keresett_nev=$1

awk -F',' -v nev="$keresett_nev" '$2==nev {print $3}' people.csv
