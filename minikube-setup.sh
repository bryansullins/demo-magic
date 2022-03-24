#!/bin/bash

## Kill all running jobs or processes running from previous demo.
jobs -p | xargs kill
pkill -f "minikube tunnel"
pkill -f "kubectl proxy"

## Stop and completely remove everything about minikube so we can start from scratch.
minikube stop
minikube delete --all
minikube delete --purge
docker rmi gcr.io/k8s-minikube/kicbase:v0.0.30

## Build mionikube for proper demo
minikube start
minikube addons enable metallb
minikube addons enable ingress
minikube tunnel &
kubectl proxy &
minikube addons list
