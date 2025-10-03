# FROM maven:3.9.4-eclipse-temurin-17

# WORKDIR /app

# RUN apt-get update && apt-get install -y git

# COPY target/*.jar app.jar

# EXPOSE 8082

# ENTRYPOINT ["java", "-jar", "app.jar"]

FROM maven:3.9.4-eclipse-temurin-17

USER root
WORKDIR /app

# Install Git and Docker CLI
RUN apt-get update && \
    apt-get install -y git docker.io && \
    apt-get clean

COPY target/*.jar app.jar

EXPOSE 8082

ENTRYPOINT ["java", "-jar", "app.jar"]



