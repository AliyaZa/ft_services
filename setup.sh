pkill -f minikube
minikube stop
minikube delete
minikube start --driver=virtualbox --cpus=4 --memory=4G
kubectl delete pods --all
minikube addons enable dashboard
minikube addons enable metallb

#minikube ssh 'sudo mkdir /mnt/mysql; sudo chmod 777 /mnt/mysql'
#minikube ssh 'sudo mkdir /mnt/influxdb; sudo chmod 777 /mnt/influxdb'
#minikube ssh 'sudo mkdir /mnt/ftps; sudo chmod 777 /mnt/ftps'

eval $(minikube docker-env)
kubectl apply -f srcs/configmap.yaml

#nginx
docker build -t image_nginx ./srcs/nginx
kubectl apply -f srcs/nginx/nginx.yaml

#mysql
docker build -t image_mysql ./srcs/mysql/
kubectl apply -f srcs/mysql/mysql.yaml

#wordpress
docker build -t image_wordpress ./srcs/wordpress/
kubectl apply -f srcs/wordpress/wordpress.yaml
