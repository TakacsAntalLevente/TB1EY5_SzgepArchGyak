#!/bin/bash

declare -ri n=$RANDOM

echo "A random szán: $n"

declare -i i=0
declare -i square_i=0
while [ $square_i -lt $n ]; do
	echo $square_i
	i=$((i + 1))
	square_i=$((i * i))
done
