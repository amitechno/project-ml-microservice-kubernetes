#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=amitsharma88/api:latest

# Step 2
kubectl run app --image=$dockerpath


# Step 3:
kubectl get pods
sleep 30
# Step 4:
# Forward the container port to a host

kubectl port-forward app 8000:80