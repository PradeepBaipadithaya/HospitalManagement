# Use a base image with JDK and Maven installed
FROM maven:3.8.4-openjdk-11 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . .

# Build the application using Maven
RUN mvn clean package -DskipTests



# Set the working directory in the container
WORKDIR /app

# Copy the compiled JAR file from the build stage to the runtime image
COPY --from=build /app/target/HospitalManagement.jar .

# Expose the port that your Spring Boot application listens on
EXPOSE 8030

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "HospitalManagement.jar"]

