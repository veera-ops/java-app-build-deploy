# Use a lightweight base image with Java 17
FROM openjdk:17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/java-ecr-demo-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
