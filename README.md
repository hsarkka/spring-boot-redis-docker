This project requires only Docker, as it is compiled and run in containers.

First build the backend:

    ./build-backend.sh


Docker commands
===============

Build container and run:

    docker-compose up --build

Start detached:

    docker-compose up -d

List containers:

    docker container ls

Run Redis CLI:

    docker exec -it docker-site_redis_1 redis-cli

Stop containers:

    docker-compose down
