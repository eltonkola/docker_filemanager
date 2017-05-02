# File Manager
This is a simple file manager docker image based on ubuntu 16.04 and filemanager from (https://github.com/alexantr/filemanager)

#pull docker image
docker pull eltonkola/docker_filemanager

#build docker image
docker build -t eltonkola/docker_filemanager:latest .
docker build -t eltonkola/docker_filemanager .

#run it
docker run -d -p 81:80 \
    -v /some/folder/path:/workingdir \
    -e PHP_ERROR_REPORTING='E_ALL & ~E_STRICT' \
    -e ADMIN=admin \
    -e PASSWORD=password \
    eltonkola/docker_filemanager

# terminal
docker exec -it container-id /bin/bash

#push
docker push eltonkola/docker_filemanager
docker push eltonkola/docker_filemanager:latest

# read logs
docker logs -f container-id


#docker-compose

docker-compose up -d



# other
docker exec -it filemanager_file_manager_1 /bin/bash

List all orphaned volumes with

$ docker volume ls -qf dangling=true

Eliminate all of them with

$ docker volume rm $(docker volume ls -qf dangling=true)

similar:
$ docker volume prune


docker volume create demo_volume