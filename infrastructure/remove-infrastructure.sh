cd redis
./remove-redis.sh
cd ..

cd apigateway
./remove-tyk.sh
cd ..

cd service-registry
./remove-consul.sh
cd ..

cd configuration-service
./remove-configserver.sh
cd ..

cd database-cluster
./remove-postgres.sh
cd ..

cd keycloak
./remove-keycloak.sh
cd ..

cd message-broker
./remove-rabbit.sh
cd ..

cd mongodbf
./remove-mongodb.sh
cd ..

cd observability
./remove-grafana.sh
cd ..

kubectl delete pvc --all
