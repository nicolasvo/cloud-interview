#!/bin/bash

# switch from local docker environment to minikube one
eval $(minikube -p minikube docker-env)

docker build -t ornikar-hello:1.0 ../apps/hello
docker build -t ornikar-world:1.0 ../apps/world
echo "INFO: Built Docker images ornikar-hello:1.0 and ornikar-world:1.0"
