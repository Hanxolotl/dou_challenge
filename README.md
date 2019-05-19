 Prerrequisites:

1. You need a linux machine (virtual or physical, doesn't matter) and access to *sudo*.
2. Your linux needs either:
	A. An hypervisor (KVM or Virtualbox are supposted)
	B. Docker
	C. You need curl in your linux
 
 If you don't want to use the script, you will need to install kubectl and minikube on your own
 The script may succeed at installing kubectl and minikube in a mac, but it is not guaranteed
 Using the script will perform below actions
 1. Download and install kubectl
 2. Download and install minikube
 3. If minikube was already installed, it will wipe out your configs
 4. Start the config, service and deployment