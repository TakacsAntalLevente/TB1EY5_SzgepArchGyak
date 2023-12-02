#!/bin/bash


read -p "Kérem adja meg a nevet: " nev
read -p "Kérem adja meg a telefonszámot: " telefonszam


echo "{"
echo "\"name\": \"$nev\","
echo "\"phone\": \"$telefonszam\""
echo "}" > neptunkod.json
