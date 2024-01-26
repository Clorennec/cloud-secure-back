#!/bin/bash

# Spécifiez l'emplacement du code source à analyser
PROJET_SOURCE_DIR="/opt/app/back"

# Spécifiez les informations du serveur SonarQube
SONARQUBE_URL="http://localhost:9000"
SONARQUBE_PROJECT_KEY="cloud-secure"
SONARQUBE_TOKEN="sqp_5f2762be54a416714051a204453c37cdffe1d3d8"

cd /opt/app/back
# Exécutez l'analyse SonarQube avec le scanner
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