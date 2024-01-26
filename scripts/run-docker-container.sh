#!/bin/bash

docker run -d --network cloud-secure-network --name back-1 -p 8080:8080 cloud-secure-back

if [ $? -eq 0 ]; then
    echo "Lancement du container réussi."
    exit 0
else
    echo "Erreur lors du lancement du container."
    exit 1
fi