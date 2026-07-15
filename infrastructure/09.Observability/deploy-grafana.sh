#!/usr/bin/env bash
set -euo pipefail

kubectl apply -f ./

kubectl rollout status deployment/lgtm-stack --timeout=600s

kubectl wait --for=condition=Ready pod -l app=lgtm-stack --timeout=600s

echo "lgtm-stack is ready."
echo "Run: kubectl port-forward svc/lgtm-stack 3000:3000"
echo "Then open http://localhost:3000 (user: admin / password: admin)"
