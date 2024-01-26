#!/bin/bash

LOCAL_REPO_DIR="/opt/app/back/"

cd $LOCAL_REPO_DIR

git pull

if [ $? -eq 0 ]; then
    echo "Le code a été récupéré avec succès depuis GitHub."
else
    echo "Erreur lors du clonage du dépôt GitHub."
fi