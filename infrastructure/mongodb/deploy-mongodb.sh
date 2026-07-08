kubectl apply -f 03-secret.yml

kubectl apply -f 02-headless-service.yml 

kubectl apply -f 01-deployment.yml
kubectl rollout status statefulset/mongodb --timeout=2m
kubectl wait --for=condition=Ready pod -l app=mongodb --timeout=2m

kubectl apply -f job.yml
kubectl wait --for=condition=complete job/mongodb-init-rs --timeout=3m

kubectl apply -f 04-express.yml
kubectl rollout status deployment/mongo-express --timeout=1m
kubectl wait --for=condition=Ready pod -l app=mongo-express --timeout=1m

kubectl apply -f 05-service.yml
