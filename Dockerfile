FROM openjdk:17-jdk-slim

WORKDIR /app

COPY ./target/cloud-secure-back.jar /app/cloud-secure-back.jar

CMD ["java", "-jar", "cloud-secure-back.jar"]

