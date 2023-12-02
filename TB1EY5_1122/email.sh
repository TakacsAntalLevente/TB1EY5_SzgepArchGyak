#!/bin/bash

wget -O file1.txt https://raw.githubusercontent.com/bbalage/BashExamples/master/assets/file1.txt

grep -E -o '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b' file1.txt > emails.txt

rm file1.txt
