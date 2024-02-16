#!/bin/bash

PROJET_SOURCE_DIR="/opt/app/back"

SONARQUBE_URL="http://localhost:9000"
SONARQUBE_PROJECT_KEY="cloud-secure"
SONARQUBE_TOKEN="sqp_d5e70ea331c0124e117da2ecb6b41336ca04759a"

cd /opt/app/back

mvn clean verify sonar:sonar \
  -Dsonar.projectKey="$SONARQUBE_PROJECT_KEY" \
  -Dsonar.sources="$PROJET_SOURCE_DIR" \
  -Dsonar.projectName="$SONARQUBE_PROJECT_KEY" \
  -Dsonar.host.url="$SONARQUBE_URL" \
  -Dsonar.token="$SONARQUBE_TOKEN"

  if [ $? -eq 0 ]; then
    echo "Analyse sonaqube réussie."
    exit 0
else
    echo "Erreur lors de l'analyse sonarqube."
    exit 1
fi
