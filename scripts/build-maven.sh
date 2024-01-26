#!/bin/bash

cd /opt/app/back

mvn clean install

if [ $? -eq 0 ]; then
    echo "Build Maven réussi."
else
    echo "Erreur lors du build Maven."
fi