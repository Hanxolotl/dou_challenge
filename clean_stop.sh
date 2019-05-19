#!/bin/bash

kubectl delete service postgres; 
kubectl delete deployment postgres;
kubectl delete configmap postgres-config;
minikube stop ;