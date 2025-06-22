---
title: Docker
excerpt: Docker lets you package applications with their dependencies into portable containers. It simplifies building, shipping, and running software.
---

## Opening up bash inside the docker container
```bash
docker run --name ${container_name} -it ${image_name}:${tag} /bin/bash
```


## Commit the updated container as a new tag of a version. We can create an entirely new image using the current state of the container.
```bash
docker commit ${container_name/container_hash} ${image_name}:${tag}
```

## Running the python script inside the container
### If a container is not up
```bash
docker run --name ${container_name} ${image_name}:${tag} python /path/to/script/inside/container.py && docker rm ${container_name};
```


### If the container is up and running
```bash
docker exec ${container_name} /path/to/script/inside/container.py
```


