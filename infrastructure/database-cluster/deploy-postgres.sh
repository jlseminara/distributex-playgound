kubectl apply --server-side -f ./postgres-operator.yml
kubectl apply -f ./secret.yml
kubectl apply --server-side -f ./cluster-postgres.yml
kubectl apply -f ./services.yml
