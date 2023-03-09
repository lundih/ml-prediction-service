# Operationalise a Machine Learning Microservice API

[![CircleCI](https://circleci.com/gh/lundih/ml-prediction-service.svg?style=svg)](https://circleci.com/gh/lundih/ml-prediction-service)

---

## Project Summary

The project contains a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). It serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

The project uses Docker for containerization and [Kubernetes](https://kubernetes.io/) for container orchestration

---

## Running the App

**Setting Up the Environment**

- Standalone 
    - Ensure python 3.7 is available in the host machine
    - Install venv
    - Create the virtual environment for the project
    - Activate the environment
    - Install the app's dependencies by running: 
    ```bash 
    make install
    ```

- Docker
    - Set up and configure Docker
    - (Optional) Install hadolint to lint the Dockerfile

- Kubernetes
    - Set up and configure Docker
    - Set up and configure Kubernetes (minikube and Kubectl used in this project)
    - Create a containerized Flask application

**Commands**

- Standalone: 
```bash
python app.py
```
- Run in Docker: 
```bash
./run_docker.sh
```
- Run in Kubernetes:
```bash
./run_kubernetes.sh
```

---

## Files 
- `app.py` - flask application that returns the predictions
- `requirements.txt` - contains the app's dependencies
- `Makefile` - contains commands to easily setup a virtual environment, install dependencies, and lint files
- `Dockerfile` - contains instructions on how to build a docker image
- `run_docker.sh` - builds the docker image, tags it, and runs the container
- `upload_docker.sh` - tags the docker image and pushes it to a repository
- `run_kubernetes.sh` - runs the application in kubernetes
- `make_prediciton.sh` - sends a request to the app for prediction
- `docker_out.txt` - contains sample output of a successful response after running `make_prediciton.sh` with a successfully running container application
- `kubernetes_out.txt` - contains sample output of successful response after running `make_prediciton.sh` with a successfully running application in kubernetes
- `.circleci/config.yml` - CircleCI config file to build the app
