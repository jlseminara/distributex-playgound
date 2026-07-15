# Obtener credenciales
kubectl get secret rabbitmq-cluster-default-user -o jsonpath='{.data.username}' | base64 --decode
kubectl get secret rabbitmq-cluster-default-user -o jsonpath='{.data.password}' | base64 --decode
echo "Usuario: $username"
echo "Password: $password"

# Port-forward
kubectl port-forward service/rabbitmq-cluster 15672


user: guest
pass: guest

