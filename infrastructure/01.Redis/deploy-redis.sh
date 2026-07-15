kubectl apply -f configmap.yml
kubectl apply -f statefulset.yml

kubectl rollout status statefulset/redis --timeout=240s
kubectl wait --for=condition=Ready pod/redis-2 --timeout=240s

kubectl apply -f cluster-init-job.yml
kubectl apply -f headless-service.yml
kubectl apply -f service.yml
