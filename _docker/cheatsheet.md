---
layout: default
title: docker cheatsheet
---

## Opening up bash inside the docker container
> docker run --name ${container_name} -it ${image_name}:${tag} /bin/bash

## Commit the updated container as a new tag of a version. We can create an entirely new image using the current state of the container.
> docker commit ${container_name/container_hash} ${image_name}:${tag}

## Running the python script inside the container
### If a container is not up
> docker run --name ${container_name} ${image_name}:${tag} python /path/to/script/inside/container.py && docker rm ${container_name};

### If the container is up and running
> docker exec ${container_name} /path/to/script/inside/container.py


