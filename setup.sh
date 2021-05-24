pkill -f minikube
minikube stop
minikube delete
minikube start --driver=virtualbox --cpus=4 --memory=4G
kubectl delete pods --all
minikube addons enable dashboard
minikube addons enable metallb

eval $(minikube docker-env)
kubectl apply -f srcs/configmap.yaml

#nginx
docker build -t image_nginx ./srcs/nginx
kubectl apply -f srcs/nginx/nginx.yaml
