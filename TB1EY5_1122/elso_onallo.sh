#!/bin/bash

read -p "Felhasználónév: " username
read -p "Verzió: " version
read -p "Oldal: " site

echo "username: $username" > config.yml
echo "version: $version" >> config.yml
echo "site: $site" >> config.yml
