# Docker Network Setup

We will create a custom Docker network for the Gitea and Jenkins containers to communicate.

## Create the network

`` docker network create gitea_default``

`` docker network ls`` 

To filter for a substring in the name of network

`` docker network ls --filter name=gitea``

## Inspect the network to see the containers

`` docker network inspect gitea_default``

## Add the network

`` docker network connect gitea_default JENKINS_CONTAINER``

`` docker network connect gitea_default GITEA_CONTAINER``

## References
- [https://docs.docker.com/reference/cli/docker/network/inspect/](https://docs.docker.com/reference/cli/docker/network/inspect/)
