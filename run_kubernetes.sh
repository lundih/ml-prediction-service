#!/usr/bin/env bash

dockerpath=lundih/ml-prediction-service:latest

kubectl create deployment ml-prediction-service --image=$dockerpath

kubectl get pods --all-namespaces

kubectl expose deployment ml-prediction-service --type="NodePort" --port=80

kubectl port-forward deployment/ml-prediction-service 8000:80
