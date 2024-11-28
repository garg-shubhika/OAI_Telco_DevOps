#!/bin/bash


NETWORK_NAME="gitea_default"
CONTAINER_NAME_1="gitea"
CONTAINER_NAME_2="jenkins"

# Ensure the containers are running and not connected to the network

# Check and create the network
docker network inspect $NETWORK_NAME > /dev/null 2>&1

if [ $? -ne 0 ]; then
  echo "Network $NETWORK_NAME does not exist. Creating it."
  docker network create $NETWORK_NAME
else
  echo "Network $NETWORK_NAME already exists."
fi

# Connect the Gitea and Jenkins container

echo "Connecting containers to the network..."
docker network connect "$NETWORK_NAME" "$CONTAINER_NAME_1"
docker network connect "$NETWORK_NAME" "$CONTAINER_NAME_2"

# Inspect the network

echo "network $NETWORK_NAME"

#docker network inspect $NETWORK_NAME

# Get the container names and IPv4 addresses inside our network
CONTAINERS=$(docker network inspect "$NETWORK_NAME" -f '{{range .Containers}}{{.Name}} - {{.IPv4Address}}{{"\n"}}{{end}}')

# If no containers are found inside the network

if [ -z "$CONTAINERS" ]; then
  echo "No containers found in the network $NETWORK_NAME."
else
  # Print the container names and IPv4 addresses
  echo "$CONTAINERS"
fi


## Provide the permissions to the script using chmod +x network_automation.sh
## Run it ./network_automation.sh
