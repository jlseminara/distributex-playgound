cd 01.Redis
./deploy-redis.sh
cd ..

cd 02.Database-cluster
./deploy-postgres.sh
cd ..

cd 03.Keycloak
./deploy-keycloak.sh
cd ..

cd 04.Service-registry
./deploy-consul.sh
cd ..

cd 05.Configuration-service
./deploy-configserver.sh
cd ..

cd 06.Apigateway
./deploy-tyk.sh
cd ..

cd 07.Message-broker
./deploy-rabbit.sh
cd ..

cd 08.Mongodb
./deploy-mongodb.sh
cd ..

cd 09.Observability
./depploy-grafana.sh
cd ..
