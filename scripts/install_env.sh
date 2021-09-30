#!/bin/bash

# Install minikube, kubectl, helm and start minikube

# if ! docker info > /dev/null 2>&1; then
#   echo "ERROR: Docker is not running. Please install and start Docker."
#   exit 1
# fi

if [ -x "$(command -v minikube)" ]; then
    echo "INFO: Command minikube already exists"
else
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64
    sudo install minikube-darwin-amd64 /usr/local/bin/minikube
    rm minikube-darwin-amd64
    echo "INFO: minikube installed at path /usr/local/bin/minikube"
fi

if [ -x "$(command -v kubectl)" ]; then
    echo "INFO: Command kubectl already exists"
else
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/amd64/kubectl"
    # ln -s kubectl /usr/local/bin/kubectl
    chmod +x kubectl
    sudo mv kubectl /usr/local/bin/kubectl
    echo "INFO: kubectl installed at path /usr/local/bin/kubectl"
fi

if [ -x "$(command -v helm)" ]; then
    echo "INFO: Command helm already exists"
else
    curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
    chmod 700 get_helm.sh
    ./get_helm.sh
    rm get_helm.sh
fi

# TODO: check node already exists and ready
minikube start --driver=virtualbox
