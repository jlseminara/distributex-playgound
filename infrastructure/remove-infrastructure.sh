cd 01.Redis
./remove-redis.sh
cd ..

cd 02.Database-cluster
./remove-postgres.sh
cd ..

cd 03.Keycloak
./remove-keycloak.sh
cd ..

cd 04.Service-registry
./remove-consul.sh
cd ..

cd 05.Configuration-service
./remove-configserver.sh
cd ..

cd 06.Apigateway
./remove-tyk.sh
cd ..

cd 07.Message-broker
./remove-rabbit.sh
cd ..

cd 08.Mongodb
./remove-mongodb.sh
cd ..

cd 09.Observability
./remove-grafana.sh
cd ..


kubectl delete pvc --all
