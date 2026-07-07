kubectl delete -f 03-service.yml
kubectl delete -f 02-deployment.yml
kubectl delete -f 01-storage.yml
kubectl delete -f 00-secret.yml
kubectl delete pod --field-selector=status.phase==Succeeded
kubectl delete job keycloak-realm-setup

