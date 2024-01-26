#!/bin/bash

LOCAL_REPO_DIR="/opt/app/back/"

cd $LOCAL_REPO_DIR

git pull

if [ $? -eq 0 ]; then
    echo "Le code a été récupéré avec succès depuis GitHub."
    exit 0
else
    echo "Erreur lors du clonage du dépôt GitHub."
    exit 1
fi