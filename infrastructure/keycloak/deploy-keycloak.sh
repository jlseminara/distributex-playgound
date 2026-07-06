kubectl apply -f ./00-secret.yml
kubectl apply -f ./01-storage.yml
kubectl wait --for=condition=Ready cluster/keycloak-db --timeout=120s

kubectl apply -f ./02-deployment.yml
kubectl wait --for=condition=Available deployment/keycloak --timeout=180s

kubectl apply -f ./03-service.yml

kubectl wait --for=condition=Ready pod -l app=keycloak --timeout=180s
sleep 30
kubectl apply -f ./04-job.yml
