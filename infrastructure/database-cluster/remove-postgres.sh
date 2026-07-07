kubectl delete -f ./services.yml
kubectl delete -f ./cluster-postgres.yml
kubectl delete -f ./secret.yml
kubectl delete --server-side -f ./postgres-operator.yml
