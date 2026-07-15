kubectl apply -f 01-configmap.yml
kubectl apply -f 03-pdb.yml
kubectl wait --for=condition=DisruptionAllowed pdb/tyk-pdb --timeout=180s

kubectl apply -f 04-deployment.yml
kubectl rollout status deployment/tyk-gateway --timeout=180s

kubectl apply -f 02-service.yml
