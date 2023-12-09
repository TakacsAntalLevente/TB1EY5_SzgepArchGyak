#!/bin/bash

function sum {
	declare -i sum=0

	for n; do
		sum=$((sum + n))
	done

	echo $sum
}

sum "$@"
