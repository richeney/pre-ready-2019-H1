# Post install checks

## Create config file

```bash
umask 022
[[ -d ~/.kube ]] || mkdir ~/.kube
terraform output kube_config > ~/.kube/config
```

## Install kubectl if not there

```bash
sudo az aks install-cli
```

## List nodes (namespace independent)

```bash
kubectl get nodes
```

## View config and namespaces

```bash
kubectl config view
kubectl get namespaces
```

There are three namespace by default, which are `default`, `kube-public` and `kube-system`. The other one is your namespace, which in the variables.tf is defaulting to `aks-demo`. The deployments, pods etc. have been put into this namespace.

## Add namespace to context and use it

Note that the context in my config file has defaulted to the same as the dns_prefix variable, which includes the prefix. For me that prefix is `rpjc` and will be used in the commands. Change to your prefix.

```bash
kubectl config get-contexts
kubectl config set-context rpjcaksdemo --namespace aks-demo
kubectl config get-contexts
kubectl config use-context rpjcaksdemo
```

## View deployments etc

```bash
kubectl get deployments
kubectl get pods
```

## Run the proxy for the dashboard

```bash
kubectl proxy &
```

(Use `kill %1` later to remove it if `jobs` shows the proxy as background job #1.)

Open the dashboard, noting the namespace qualifier at the end of the following URL:

<http://localhost:8001/api/v1/namespaces/kube-system/services/kubernetes-dashboard/proxy/#!/overview?namespace=aks-demo>
