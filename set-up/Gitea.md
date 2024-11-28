# Installation of Gitea

Run the command, to check if the CPU supports avx2

`lscpu | grep avx2`

## 1. Install Gitea in the docker

### 1.1 Start docker in WSL
`sudo dockerd`

### 1.2 Install docker-compose in another terminal
```
sudo apt update
sudo apt install -y docker-compose
docker-compose --version
```

### 1.3 Create Gitea directory
```
mkdir -p ~/gitea/{data,config}
cd ~/gitea
```

### 1.4 write the docker-compose.yml

```
version: "3"

services:
  gitea:
    image: gitea/gitea:latest
    container_name: gitea
    environment:
      - USER_UID=1000
      - USER_GID=1000
    volumes:
      - ./data:/data
    ports:
      - "3000:3000"
      - "222:22"
    restart: always
  jenkins:
  # ..... CONFIG.....
```


### 1.5 Start Gitea
`docker-compose up -d`


### 1.6 Clone the repository in Gitea local
`git clone https://gitlab.eurecom.fr/oai/cn5g/oai-cn5g-nrf.git`

You can check the directory contents:
`cd gitea/oai-cn5g-nrf/ ; ls`

### 1.7 Access Gitea on the browser
[http://localhost:3000/gargshubhika/oai-cn5g-nrf](http://localhost:3000/gargshubhika/oai-cn5g-nrf)

### 1.8 Get the IP address of the running Docker container
`docker ps`

`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' CONTAINER_ID`

### References
- [https://docs.gitea.com/installation/install-with-docker](https://docs.gitea.com/installation/install-with-docker)
- [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)


