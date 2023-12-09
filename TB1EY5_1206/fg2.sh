#!/bin/bash

function randgen {
	declare -ri N=${1:-5}
	declare -ri x=${2:-1}
	declare -ri y=${3:-90}

	for _ in $(seq 1 $N); do
		echo $((RANDOM % (y - x + 1) + x))
	done
}

randgen 10 800 900
randgen 15 -10 10
