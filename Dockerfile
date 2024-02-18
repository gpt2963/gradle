# Use a base image with JDK installed
FROM openjdk:11

# Set environment variables
ENV GRADLE_VERSION=8.1.1

# Download and install Gradle
WORKDIR /opt
RUN wget -q --show-progress  https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip && \
    unzip -q gradle-${GRADLE_VERSION}-bin.zip && \
    mv gradle-${GRADLE_VERSION} gradle && \
    rm -f gradle-${GRADLE_VERSION}-bin.zip

ENV GRADLE_HOME=/opt/gradle
ENV PATH=${GRADLE_HOME}/bin:${PATH}


# Create a directory in the container for the project
RUN mkdir /app/


# Copy the Gradle project files
COPY build.gradle /app/.
COPY src /app/src

# Set the working directory
WORKDIR /app


# Check gardel  version
RUN gradle --version

# Use the Gradle executable from the installation directory
RUN gradle clean build

VOLUME ["/app/opt"]
