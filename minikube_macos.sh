#!/bin/bash

minikube start --vm=true --driver=hyperkit
minikube addons enable ingress
minikube service web --url

helm install example ./manifest
kubectl get all
kubectl get ing
# Update /etc/hosts to add entry for $(minikube ip) https-example.foo.com
