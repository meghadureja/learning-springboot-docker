# learning-springboot-docker
Create a microservice with Spring Boot and Docker

1. add spring dependencies
2. create spring boot microservice
3. run $mvn clean package spring-boot:repackage (for an executable jar)
3. create a docker file to run spring boot
4. run $docker build -t <image_name> .
5. run $docker run -p 5000:8080 <image_name>
   (-p parameter tells Docker to expose port 8080 of application that is running inside the container, 
   on port 5000 of the operating system)

#OR

6. create docker image using maven plugin (spotify/dockerfile-maven)
7. run $mvn dockerfile:build
8. run $docker run -p 5000:8080 learning-springboot-docker

So there are number of ways to build a docker/container image 
1. Conventional Way - adding a few instructions to a Docker file
 - We first build an executable JAR and as part of the Docker file instructions, copy the executable JAR over a base JRE image after applying necessary customizations.
2. Using Spotify Plugin
3. Using Spring Boot Plugin
4. Using Jib Plugin

