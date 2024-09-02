# list existing resource groups
az group list

az aks get-credentials --resource-group Kubernetes --name my-cluster --overwrite-existing

kubectl get pods

kubectl get nodes

kubectl get nodes -o wide

kubectl run myyfirstpod --image nginx

kubectl get pod

kubectl get pod -o wide

kubectl describe pod myyfirstpod

kubectl expose pod myyfirstpod --type=LoadBalancer --port=80 --name nginxlb

kubectl get svc

kubectl get namespace

kubectl delete pod myyfirstpod

kubectl delete svc nginxlb

kubectl run httpdpod --image httpd

kubectl expose pod httpdpod --type=LoadBalancer --port=80 --name httpdlb

kubectl delete svc .

kubectl get all

kubectl delete all


az aks get-credentials --resource-group kubernetes --name my-cluster

az login

az account clear
az config set core.enable_broker_on_windows=false
az login

kubectl

kubectl get all


kubectl get pod myyfirstpod -o yaml

kubectl get svc nginxlb -o yaml

kubectl delete pod myyfirstpod
kubectl delete pod httpdpod

kubectl delete svc nginxlb

kubectl delete svc httpdlb

kubectl apply -f .\service.yaml

kubectl apply -f .\resplicaset.yaml

kubectl describe pod my-rs-qp4x9

kubectl get svc

kubectl create deployment nginx-deployment --image=nginx

or

kubectl create deployment nginx-deployment --image=nginx --replicas=3

kubectl create deployment nginx-deployment --image=nginx --container-name=nginx-container --replicas=3


#scale up pods

kubectl scale --replicas=10 deployment/nginx-deployment

kubectl get deployment -o wide

kubectl get deployment -o yaml

kubectl describe deployment nginx-deployment



# reducing replicas

kubectl scale --replicas=2 deployment/nginx-deployment

#Updating the image version using deployment as latest version (Rolout)
# below nginxcontainer is container name

kubectl set image deployment/nginx-deployment nginx=ngnix:latest --record=true

kubectl

kubectl expose deployment nginx-deployment --type=LoadBalancer --port=80 --name=nginxlb

kubectl rollout history deployment/nginx-deployment

# To edit the deployment from the cli terminal 
kubectl edit deployment/nginx-deployment --record=true

kubectl get rs

kubectl rollout status deployment/nginx-deployment 





