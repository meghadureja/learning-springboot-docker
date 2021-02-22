# learning-springboot-docker
Create a microservice with Spring Boot and Docker

1. add spring dependencies
2. create spring boot microservice
3. run $mvn clean package spring-boot:repackage (for a executable jar)
3. create a docker file to run spring boot
4. run $docker build -t <image_name> .
5. run $docker run -p 5000:8080 <image_name>
   -p parameter tells Docker to expose port 8080 of application that is running inside the container, 
   on port 5000 of the operating system
