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


