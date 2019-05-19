 Prerrequisites:

1. You need a linux machine (virtual or physical, doesn't matter as long as it has internet acess) and access to *sudo*.
2. Your linux needs:
  * A hypervisor (Tested in Virtualbox, KVM is also recommended but haven't tried it yet)
  * curl

 
The include script _run_all.sh_ will install kubectl and minikube.
If you don't want to use the script, you will need to install kubectl and minikube on your own

The script is tested on linux, it may succeed at installing kubectl and minikube in a mac, but it is not guaranteed
Using the script will perform below actions
 1. Download and install kubectl
 2. Download and install minikube
 3. If minikube was already installed, it will wipe out your configs
 4. Run the second script _start.sh_ which will create the kubernetes cluster and ends up logging you into the postgresql node

The easiest way to run this is:
 1. Clone this repo (into a linux with virtualbox and curl)
 2. Run _run_all.sh_ with the command `./run_all.sh`
 3. Whenever you want to stop the cluster, use the script _clean_stop.sh_ by issuing the command `./clean_stop.sh`
