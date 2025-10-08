# Use a lightweight Java 17 image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy all your repo files into the container
COPY . .

# Expose the Minecraft proxy port
EXPOSE 25565

# Run the Velocity proxy server
CMD ["java", "-Xms256M", "-Xmx512M", "-jar", "velocity-3.4.0.jar"]
