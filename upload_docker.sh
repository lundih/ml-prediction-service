#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

dockerpath=lundih/ml-prediction-service:latest

# Authenticate & tag
docker login && docker image tag ml-prediction-service:latest $dockerpath

# Push image to a docker repository
docker image push $dockerpath 
