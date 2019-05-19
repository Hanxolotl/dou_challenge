#!/bin/bash

echo; echo "Downloading and installing kubectl";
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl 
chmod +x ./kubectl;
sudo mv ./kubectl /usr/local/bin/kubectl;
kubectl version;
if [ ! $? -eq 0 ]; then
	echo "There was an issue installing kubectl, please handle";
	exit 1;
fi

echo; echo "Downloading and installing minikube";
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube

sudo cp minikube /usr/local/bin && rm minikube

if [ -e ~/.minikube ]; then
  sudo rm  -rf ~/.minikube
fi


echo; echo "Downloading and installing psql";
sudo apt-get install -y postgresql-client;

./start.sh
