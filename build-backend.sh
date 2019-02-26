#!/bin/sh

echo "Creating volume for Gradle cache..."
docker volume create --name gradle-cache
echo

echo "Running Gradle in container..."
docker run --rm --volume gradle-cache:/home/gradle/.gradle --volume "$PWD/backend":/home/gradle/project -w /home/gradle/project gradle:5.2-jdk8-alpine gradle build
echo

BUILD_OUTPUT=backend/build/libs/demo-0.0.1-SNAPSHOT.jar
ls -l $BUILD_OUTPUT
cp $BUILD_OUTPUT docker/backend/app.jar
