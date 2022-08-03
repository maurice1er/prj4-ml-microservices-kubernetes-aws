#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t ml-app:latest .

# Step 2: 
# List docker images
docker images | grep ml-app

# Step 3: 
# Run flask app
docker run --rm -itd -p 8000:80 --name ml-app ml-app:latest

