FROM alpine:latest
LABEL maintainer="ayaarf0406@gmail.com"

# Installation de OpenJDK 11 (comme dans l'exemple Alpine du PDF)
RUN apk add --no-cache openjdk17

# Copie du JAR exact depuis target/ vers le conteneur
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# Exposition du port 8089 (de tes props)
EXPOSE 8089

# Démarrage de l'app Spring Boot
ENTRYPOINT ["java", "-jar", "/app.jar"]