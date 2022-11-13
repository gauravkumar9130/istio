#!/bin/bash
curl -L https://istio.io/downloadIstio | sh - 
cd istio-1.15.3
export PATH="$PATH:/home/gaurav/demos/istio-1.15.3/bin"
istioctl x precheck 
istioctl install --set profile=demo -y 
kubectl get pods -n istio-system 
kubectl label namespace default istio-injection=enabled 
