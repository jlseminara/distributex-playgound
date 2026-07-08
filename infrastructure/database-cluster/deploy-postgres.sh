kubectl apply -f ./secret.yml
kubectl apply --server-side -f ./postgres-operator.yml

kubectl wait --for=condition=Available deployment/cnpg-controller-manager -n cnpg-system --timeout=5m
kubectl wait --for=condition=Ready pod -l app.kubernetes.io/name=cloudnative-pg -n cnpg-system --timeout=5m

kubectl apply --server-side -f ./cluster-postgres.yml
kubectl wait --for=condition=Ready cluster/postgres-cluster --timeout=5m

kubectl apply -f ./services.yml
