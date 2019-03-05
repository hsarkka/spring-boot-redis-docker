#!/bin/sh

APP_NAME=demo

GRADLE_CACHE_VOLUME=${APP_NAME}-gradle-cache

echo "Creating volume for Gradle cache..."
docker volume create --name ${GRADLE_CACHE_VOLUME}

echo
echo "Running Gradle build in container..."
docker run \
    --rm \
    --volume ${GRADLE_CACHE_VOLUME}:/home/gradle/.gradle \
    --volume ${PWD}/backend:/home/gradle/project \
    --workdir /home/gradle/project \
    gradle:5.2-jdk8-alpine gradle clean build

echo
echo "Build output:"
BUILD_OUTPUT=backend/build/libs/${APP_NAME}-0.0.1-SNAPSHOT.jar
ls -l $BUILD_OUTPUT
