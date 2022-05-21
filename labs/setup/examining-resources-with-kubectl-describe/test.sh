#!/bin/bash
set -euo pipefail

kubectl run --port=8888 --image=registry.gitlab.com/alta3research/webby webweb
kubectl wait --for condition=Ready --timeout 60s pod/webweb
kubectl apply -f ../yaml/webweb-deploy.yaml
kubectl wait --for condition=Available --timeout 60s deployment.apps/webweb
