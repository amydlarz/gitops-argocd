#!/usr/bin/env bash

set -e -x -o pipefail -o errtrace -o functrace

kubectl delete namespace development

helm install spring-boot-api helm/spring-boot-api --namespace development --create-namespace

helm upgrade spring-boot-api helm/spring-boot-api --namespace development --create-namespace

kubectl get all  --namespace development
