
kubectl port-forward svc/postgres-cluster-rw 5433:5432

kubectl get secrets | grep postgres-cluster

kubectl get secret postgres-cluster-app -o jsonpath='{.data.username}' 
kubectl get secret postgres-cluster-app -o jsonpath='{.data.password}' 
kubectl get secret postgres-cluster-app -o jsonpath='{.data.dbname}' 