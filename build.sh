#!/bin/bash
docker build -t task37 .
echo Hyyy
docker login -u sanjayvs600 -p Sanjay@2005
docker tag task37 sanjayvs600/task2
docker push  sanjayvs600/task2
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
