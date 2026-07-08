cd redis
./deploy-redis.sh
cd ..

cd apigateway
./deploy-tyk.sh
cd ..

cd service-registry
./deploy-consul.sh
cd ..

cd configuration-service
./deploy-configserver.sh
cd ..

cd database-cluster
./deploy-postgres.sh
cd ..

cd keycloak
./deploy-keycloak.sh
cd ..

cd message-broker
./deploy-rabbit.sh
cd ..

cd mongodb
./deploy-mongodb.sh
cd ..

cd observability
./depploy-grafana.sh
cd ..
