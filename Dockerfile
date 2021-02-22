# FROM - base image of java8 on linux
# ADD - copies our application into docker
# ENTRYPOINT -  execute the app.jar when starting docker
FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/learning-springboot-docker-1.0-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
