# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="shresthsuman"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8090

# The application's jar file
ARG JAR_FILE=spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar


# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar"]

CMD java - jar spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar