#!/bin/bash

DOCKER_IMAGE_NAME="cloud-secure-back"

DOCKERFILE_PATH="/opt/app/back/Dockerfile"

PROJET_MAVEN_PATH="/opt/app/back"

docker stop cloud-secure-back

docker rm cloud-secure-back

docker build -t $DOCKER_IMAGE_NAME -f $DOCKERFILE_PATH $PROJET_MAVEN_PATH

if [ $? -eq 0 ]; then
    echo "L'image Docker a été créée avec succès."
    exit 0
else
    echo "Erreur lors de la création de l'image Docker."
    exit 1
fi