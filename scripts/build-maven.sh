#!/bin/bash

cd /opt/app/back

mvn clean install

if [ $? -eq 0 ]; then
    echo "Build Maven réussi."
    exit 0
else
    echo "Erreur lors du build Maven."
    exit 1
fi