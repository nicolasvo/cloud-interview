#!/bin/bash

if [ -x "$(command -v minikube)" ]; then
    minikube delete --all
    echo "INFO: Deleted local Kubernetes cluster"
fi

sudo rm /usr/local/bin/minikube
echo "INFO: Deleted minikube"
sudo rm /usr/local/bin/kubectl
echo "INFO: Deleted kubectl"
sudo rm /usr/local/bin/helm
echo "INFO: Deleted helm"
