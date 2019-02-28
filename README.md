Demo: Spring Boot - Redis - Docker
==================================

This is a small demo project of *building and running* a Spring Boot application with some 
additional services in Docker containers. It should be relatively easy to adapt the
structure to other similar architectures.


Requirements
------------

This project requires only Docker and Docker Compose, as it is compiled and run in containers.


Building and Running
--------------------

First build the backend:

    ./build-backend.sh

Build containers and run:

    docker-compose up --build

Verify that the app answers at <http://localhost:8080/users/123>.


Other Useful Docker commands
----------------------------

Start detached:

    docker-compose up -d

List containers:

    docker container ls

Run Redis CLI:

    docker exec -it spring-docker_redis_1 redis-cli

Stop containers:

    docker-compose down
