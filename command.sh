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














