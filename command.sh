# show container and images
docker ps -a
docker images
docker images inspect <image id>
# docker build
docker build . #path
# expose localPort:containerPort and image ids == build a container
docker run -p 80:3000 f5581dd12462b5fb3f229d7a91c14bfed9c412e18dd7698e38f8958a2db3d314

# start and stop image by name
docker ps
docker stop <image_name>

# docker hub
docker run -it node

# start existing container
docker start -a <container name>
docker attach <container name> # attach to a running container
docker logs -f <container name>

# attach an interactive shell
docker run -i -t 1a4e3a4cfaeeca169

# remove container
docker rm <container name> <container name2> <container name3>
docker rmi <image id> <image id2>
docker image prune

# copy file into container
docker cp folder/. <container name>:/test

###
# best way to run
docker build -t goals:v1.0.0 .
docker run -p 80:3000 -d --rm --name <app new name> <image id>

  # with volumes attached
  docker run -p 80:3000 -d --rm --name <app new name> -v localStorage:/app/containerStroage <image id>
  # with Bind Mount
  docker run -p 80:3000 -d --rm --name <app new name> -v dockerStorage:/app/containerStroage -v "localPath"%cd%":/app" -v /app/node_modules -v /app/temp <image id>

# rm volumes
docker volume --help
docker volume rm VOL_NAME 
docker volume prune

# with env Variable
docker run -d --rm --env-file ./.env --build-arg DEFAULT_PORT

# Cross container commnication
# add host.docker.internal for any localhost container connection
docker container inspect <container name id> # search get IP adress

# Networks
docker network create <net name>
docker run --name <container name> ... --network <network name >
docker network ls

# docker compose
docker-compose up -d --build
docker-compose down
