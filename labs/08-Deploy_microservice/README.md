# Deploy the microservice

## Prerequisites

Having completed labs 00 to 07




## Connect to the Vagrant VM

Connect to the VM using ssh

```console
$ cd <GIT_REPO_NAME>/vagrant
$ vagrant ssh
```

Move to the right path

```console
vagrant@terraform-vm$ cd ~/$GIT_REPO_NAME/labs/08-Deploy_microservice
```

## Apply Kubernetes configurations

```console
vagrant@terraform-vm$ kubectl apply -f *
```