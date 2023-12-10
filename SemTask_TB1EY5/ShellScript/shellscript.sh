#!/bin/bash

if [ -e gtfs.zip ]; then
    echo "Az előző verziót tartalmazó gtfs.zip fájl megtalálva, törlése"
    rm gtfs.zip
fi

if [ -d gtfs ]; then
    echo "Az előzően kitömörített mappa megtalálva, tartalmának törlése"
    rm -r gtfs
fi


wget https://gtfsapi.mvkzrt.hu/gtfs/gtfs.zip

if [ $? -ne 0 ]; then
    echo "A GTFS adatbázist enem sikerult letolteni"
    exit 1
fi

unzip gtfs.zip -d gtfs

if [ $? -ne 0 ]; then
    echo "A GTFS adatbázis kitömörítésee sikertelena"
    exit 1
fi

echo "Az utak listázása, amelyek a Centrumból indulnak vagy a Centrumba mennek:"
cat gtfs/routes.txt | grep -E 'Centrum' | cut -d ',' -f 1,2