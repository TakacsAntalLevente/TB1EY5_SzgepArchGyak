#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Adj meg egy csv fájlt paraméterként!" >&2
    exit 1
fi

file=$1

sed 's/@gmail.com/@citromail.hu/g' $file > neptunkod_people.csv
