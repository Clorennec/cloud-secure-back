FROM maven:3.8-openjdk-17 AS build

WORKDIR /app

# Copiez les fichiers nécessaires pour construire le projet
COPY ./pom.xml ./src /app/

# Exécutez le build Maven
RUN mvn clean install

# Utilisez une image plus légère pour l'exécution
FROM openjdk:17-jre-slim

# Copiez le JAR construit depuis l'étape précédente
COPY --from=build /app/target/cloud-secure-back.jar /app/cloud-secure-back.jar

# Définissez le répertoire de travail pour l'exécution de l'application
WORKDIR /app

# Commande par défaut pour démarrer l'application Spring Boot
CMD ["java", "-jar", "cloud-secure-back.jar"]

