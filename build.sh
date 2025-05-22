#!/bin/bash
docker build -t task37 .
echo Hyyy
docker tag task37 sanjayvs600/agri1
docker push  sanjayvs600/agri1
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
