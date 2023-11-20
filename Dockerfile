# Use a specific version of the official OpenJDK base image
FROM openjdk:11-jre-slim-buster

# Set the working directory and copy the JAR file into the container
WORKDIR /app
COPY target/gymTrainingProject-0.0.1-SNAPSHOT.war /app/app.war

# Expose the port that your application will run on
EXPOSE 8045

# Define environment variables
ENV JAVA_OPTS=""

# Command to run your application
CMD ["java", "-jar", "/app/app.war"]
