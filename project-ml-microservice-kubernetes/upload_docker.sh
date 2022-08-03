#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerHubImage
dockerHubImage=70077007/alx-ml-app:latest
dockerLocalImage=ml-app:latest
dockerHubLogin=70077007


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerHubImage"
cat ./docker_password.txt | docker login --username $dockerHubLogin --password-stdin 
docker tag $dockerLocalImage $dockerHubImage

# Step 3:
# Push image to a docker repository 
docker push $dockerHubImage
