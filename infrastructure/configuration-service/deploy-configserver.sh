
cd configuration-server
./gradlew clean build -x test
./gradlew dockerBuildImage

cd ..

kubectl create configmap configserver-configs --from-file=config-files --dry-run=client -o yaml | kubectl apply -f -


kubectl apply -f deployment.yml
kubectl apply -f services.yml
