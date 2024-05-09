# Use a base image with JDK and Maven installed for building the application
FROM maven:3.8.4-openjdk-11 AS build

# Set the working directory in the container
WORKDIR /app

# Copy only the pom.xml to resolve dependencies
COPY pom.xml .

# Copy the compiled JAR file from the build stage to the runtime image
COPY --from=build /app/target/HospitalManagement.war .

# Expose the port that your Spring Boot application listens on
EXPOSE 8080

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "HospitalManagement.war"]

