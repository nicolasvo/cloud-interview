#!/bin/bash

helm repo add traefik https://helm.traefik.io/traefik
helm repo update
helm install traefik traefik/traefik
