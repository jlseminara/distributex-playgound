cd configuration-server
gradle clean build -x test
gradle dockerBuildImage
cd ..

kubectl create configmap configserver-configs --from-file=config-files --dry-run=client -o yaml | kubectl apply -f -


kubectl apply -f deployment.yml
kubectl apply -f services.yml
