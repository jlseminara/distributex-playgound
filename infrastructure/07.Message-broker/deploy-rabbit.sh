kubectl apply -f ./01-cert-manager.yaml
kubectl wait --for=condition=Ready pod -l app.kubernetes.io/instance=cert-manager -n cert-manager --timeout=180s
kubectl wait --for=condition=Available deployment/cert-manager-webhook -n cert-manager --timeout=120s


kubectl apply -f ./02-rabbit-operator.yml
kubectl wait --for=condition=Available deployment/rabbitmq-cluster-operator -n rabbitmq-system --timeout=120s


kubectl apply -f ./03-deployment.yml
kubectl wait --for=condition=AllReplicasReady rabbitmqcluster/rabbitmq-cluster --timeout=120s

kubectl apply -f ./04-service.yml
