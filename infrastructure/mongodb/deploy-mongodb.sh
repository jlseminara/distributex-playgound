kubectl apply -f 01-deployment.yml
kubectl apply -f 02-headless-service.yml
kubectl apply -f 03-secret.yml
kubectl apply -f 04-express.yml
kubectl apply -f 05-service.yml

kubectl wait --for=condition=Running pod/mongodb-2 --timeout=120s

kubectl apply -f .\job.yml
