Demo: Spring Boot - Redis - Docker
==================================

This is a small demo project of *building and running* a Spring Boot application and some 
additional services in Docker containers. It should be relatively easy to adapt the
structure to other similar architectures.

1. *Build environment:*  The `build-backend.sh` script uses the [official Docker image for Gradle](https://hub.docker.com/_/gradle) 
to build the backend code.

2. *Development runtime environment:* Built using [Docker Compose](https://docs.docker.com/compose/).
The multi-container setup runs the following containers:
    * Backend container using the [official Docker image for OpenJDK](https://hub.docker.com/_/openjdk).
      Exposes the port `8080` to the host.
    * Redis container using the [official Docker image for Redis](https://hub.docker.com/_/redis)


Requirements
------------

This project requires only Docker and Docker Compose, as it is compiled and run in containers.


Building and Running
--------------------

First build the backend:

    ./build-backend.sh

Build containers and run:

    docker-compose up

Verify that the app answers at <http://localhost:8080/users/123>.


Running in the Background
-------------------------

Start detached:

    docker-compose up -d

List containers:

    docker container ls

Run Redis CLI:

    docker exec -it spring-boot-redis-docker_redis_1 redis-cli

Stop containers:

    docker-compose down
