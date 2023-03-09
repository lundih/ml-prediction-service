#!/usr/bin/env bash

docker build --tag=ml-prediction-service:latest .

docker image ls

docker run -p 8000:80 ml-prediction-service:latest
