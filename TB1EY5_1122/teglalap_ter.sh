#!/bin/bash

read -p "Adja meg az első pontott (x1 y1): " x1 y1
read -p "Adja meg a második pontott (x2 y2): " x2 y2

area=$(( (x2 - x1) * (y2 - y1) ))
echo "A téglalap területe: $area"
