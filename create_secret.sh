#!/bin/bash

echo "Enter your GoDaddy Key:";
read key;

echo "Enter your GoDaddy Secret:";
read secret;

echo "Creating secret"
kubectl create secret generic godaddy-dyndns -n kube-system --from-literal=key=${key} --from-literal=secret=${secret}

