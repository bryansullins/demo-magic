# K8s Demo

This is a repo I use for a minikube-based demo using demo-magic.

## Info

This repo was forked from [paxtonhare's original repo](https://github.com/paxtonhare/demo-magic). See the original repo for instructions on how to use demo-magic.

## Requirements

- `minikube` must be installed - tested only on MacOS and Linux.

## Features
- Simulates typing. It looks like you are actually typing out commands
- Allows you to actually run commands or pretend to do so.
- Can hide commands from presentation. Useful for behind the scenes stuff that doesn't need to be shown.

## Added files for use with the Kubernetes Demo:

- `minikube-destroy-all.sh` - will destroy all minikube and all resources that go with it.
- `minikube-setup.sh` - will destroy all minikube and all resources that go with it, then build minikube with Ingress, Load Balancer, and kube proxy.
- `k8s-demo.sh` - the script for the actual demo-magic commands with the Kubernetes demo.
- `kubectlcmds.sh` - This file documents all commands used in the demo.