# Use lightweight JDK image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy jar file (generated after mvn clean package)
COPY target/*.jar app.jar

# Expose Spring Boot default port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
