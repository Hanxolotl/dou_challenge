#!/bin/bash

minikube start #--vm-driver none;
if [ ! $? -eq 0 ]; then
	echo "There was an issue starting minikube, please handle";
	exit 1;
fi

echo; echo "Creating the configs";
kubectl create -f postgres-configmap.yaml ;
echo "Creating the deployment";
kubectl create -f postgres-deployment.yaml ;
echo "Creating the service";
kubectl create -f postgres-service.yaml ;

echo "The created services are: $(kubectl get svc postgres)";

SERVICES=$(minikube service list | grep post | tr -d '|' |awk -F'//' '{print $2}');
POSTGRES_IP=$(echo ${SERVICES}| awk -F':' '{print $1}');
POSTGRES_PORT=$(echo ${SERVICES}| awk -F':' '{print $2}');
echo "IP of the node is: ${POSTGRES_IP}";
echo "Port of the node is: ${POSTGRES_PORT}";


echo; echo "Waiting a bit for postgres to be ready...";
sleep 20;


PGPASSWORD=Aw3s0m3 psql -h ${POSTGRES_IP} -U postgres -p ${POSTGRES_PORT} WORKSHOP