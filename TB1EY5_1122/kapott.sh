#!/bin/bash


if [ "$#" -ne 1 ]; then
    echo "Adj meg egy txt fájlt paraméterként!" >&2
    exit 1
fi


file=$1


printf "$(sed 's/happy/nem gondoltam a vizsgaidőszakra/g' $file)" > out.txt
