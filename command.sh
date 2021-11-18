# docker build
docker build . #path
# expose localPort:containerPort and image ids
docker run -p 80:3000 f5581dd12462b5fb3f229d7a91c14bfed9c412e18dd7698e38f8958a2db3d314

# start and stop image by name
docker ps
docker stop <image_name>

# docker hub
docker run -it node