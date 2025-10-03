FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk maven git && \
    apt-get clean

COPY target/*.jar app.jar

EXPOSE 8082

ENTRYPOINT ["java", "-jar", "app.jar"]

