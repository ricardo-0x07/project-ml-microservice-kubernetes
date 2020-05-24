#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=clivecadogan/devops-ml-predictor

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlpredictor \
    --generator=run-pod/v1 \
    --image=$dockerpath \
    --port=80 --labels app=mlpredictor


# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward mlpredictor 8000:80

