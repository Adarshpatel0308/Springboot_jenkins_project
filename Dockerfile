#FROM maven:3.9.4-eclipse-temurin-17

# WORKDIR /app

# RUN apt-get update && apt-get install -y git

# COPY target/*.jar app.jar

# EXPOSE 8082

# ENTRYPOINT ["java", "-jar", "app.jar"]
FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/*.jar app.jar

EXPOSE 8082

ENTRYPOINT ["java", "-jar", "app.jar"]





