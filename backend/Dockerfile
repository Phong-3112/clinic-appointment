# # Step 1: Build the Spring Boot Application
# # This stage uses the official Gradle image to build the project.
# FROM gradle:7.6-jdk17 AS builder

# # Set the working directory inside the Docker container for the build process.
# WORKDIR /app

# # Copy the entire project (including source code, build.gradle, settings.gradle) to the working directory.
# COPY --chown=gradle:gradle ./backend /app

# # Run the Gradle build to compile the application and package it into a JAR file.
# RUN gradle build --no-daemon

# Step 2: Run the Application
# This stage uses a lightweight OpenJDK image to run the compiled Spring Boot application.
FROM eclipse-temurin:17

# Set the working directory inside the Docker container for the runtime.
WORKDIR /app

COPY ./backend .

