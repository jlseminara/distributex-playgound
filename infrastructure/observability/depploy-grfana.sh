kubectl apply -f ./

kubectl wait --for=condition=Ready pod -l app=lgtm-stack --timeout=120s

