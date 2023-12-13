# Stage 1: Build the application
FROM gradle:6.7.1-jdk11 as builder

WORKDIR /app

COPY . .

# Build your Java application using Gradle
RUN gradle build --no-daemon

# Stage 2: Create the final image
FROM openjdk:11-jre-slim

WORKDIR /app

# Copy only the necessary artifacts from the builder stage
COPY --from=builder /app/build/libs/your-app.jar .

# Set the default command to run your application
CMD ["java", "-jar", "your-app.jar"]
