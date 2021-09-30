# Steps

- [Steps](#steps)
  - [Requiremments](#requiremments)
  - [Install environment](#install-environment)
  - [Build images](#build-images)
  - [Deploy Traefik](#deploy-traefik)
  - [Deploy and browse apps](#deploy-and-browse-apps)
  - [Uninstall apps](#uninstall-apps)
  - [Uninstall environment](#uninstall-environment)

All scripts are located in `cloud-interview/scripts`.

## Requiremments

- MacOS
- virtualbox
- sudo

## Install environment

The environment contains minikube, kubectl and helm.

Run the script: `bash install_env.sh`

## Build images

`hello` and `world` app images are built in Minikube's Docker daemon.

Run the script: `bash build_images.sh`

## Deploy Traefik

The official Traefik Helm chart is used: https://helm.traefik.io/traefik.

Run the script: `bash install_traefik.sh`

## Deploy and browse apps

The apps are packaged in individual Helm charts.

1. Run the script: `bash install_apps.sh`
2. In another terminal, run: `minikube tunnel -c`
3. Get the Traefik LB IP with: `kubectl get svc traefik -o jsonpath="{.spec.clusterIP}"`
4. Add the IP and the domain ornikar.dev to `/etc/hosts`.
5. Navigate to http://ornikar.dev/hello and http://ornikar.dev/world
6. If the browser complains about HSTS, run:
```
curl ornikar.dev/hello
curl ornikar.dev/world
```

## Uninstall apps

Run the script: `bash uninstall_apps.sh`

## Uninstall environment

Run the script: `bash uninstall_env.sh`
