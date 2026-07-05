cd apigateway
./remove-tyk.sh
cd ..

cd service-registry
./remove-consul.sh
cd ..

cd configuration-service
./remove-configserver.sh
cd ..

cd redis
./remove-redis.sh
cd ..

cd database-cluster
./remove-postgres.sh
cd ..