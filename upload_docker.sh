#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=clivecadogan/devops-ml-predictor

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username clivecadogan --password-stdin < ~/docker_password.txt
docker tag ml-predictor:latest clivecadogan/devops-ml-predictor:latest

# Step 3:
# Push image to a docker repository
docker push clivecadogan/devops-ml-predictor:latest
