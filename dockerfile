# Base WORKDIR => /
FROM openjdk:24-jdk-slim
WORKDIR /app

# Define build-time argument
ARG jarName

# Set environment variable from ARG
ENV JAR_NAME=${jarName}

# Copy Jar from build context to /app directory in the image
COPY target/${JAR_NAME}.jar ${JAR_NAME}.jar

# Set the entry point
CMD ["sh", "-c", "java -jar /app/${JAR_NAME}.jar"]
