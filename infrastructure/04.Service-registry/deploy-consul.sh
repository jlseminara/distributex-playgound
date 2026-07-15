kubectl apply -f ./consul-deployment.yml

kubectl rollout status statefulset/consul

