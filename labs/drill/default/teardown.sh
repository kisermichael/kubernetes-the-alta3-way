#!/bin/bash
set -euo pipefail

echo "[-] No teardown"
if [ -e ~/singer.yaml ] 
then
  echo "deleting"
  kubectl delete --ignore-not-found ~/singer.yaml
else
  echo "file does not exist"
fi
