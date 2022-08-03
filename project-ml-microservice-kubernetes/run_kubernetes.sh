#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
deploymentpath=k8s/deployments.yml

# Step 2
# Run the Docker Hub container with kubernetes 
kubectl apply -f $deploymentpath

# Step 3:
# List kubernetes pods
kubectl get pods -n alxproj4 | grep alxproj4-deploy 

# Step 4:
# Forward the container port to a host
## we use NodePort : http://localhost:31031 
echo "goto: http://localhost:31031"
