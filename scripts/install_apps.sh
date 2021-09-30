#!/bin/bash

helm install ../resources/helm-charts/hello --name-template=ornikar-hello
helm install ../resources/helm-charts/world --name-template=ornikar-world

# run minikube tunnel -c in another terminal to expose Traefik LB