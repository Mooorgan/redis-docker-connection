# Run only one container from a docker-compose file where redis-essentials-redis is a service name:

docker-compose up -d redis-essentials-redis

# Attach a shell to running container where "redis-essentials-book" is a container name:

docker exec -it redis-essentials-book sh
