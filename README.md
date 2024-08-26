# Setup HELM
```bash
helm repo add stable https://charts.helm.sh/stable
```

```bash
helm repo update
```

# ArgoCD installation
```bash
kubectl create namespace argocd
```

```bash
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

Install ArgoCD CLI
```bash
brew install argocd
````

Extract admin password
```bash
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d`
```

Install ApplicationSet controller
```bash
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj-labs/applicationset/v0.3.0/manifests/install.yaml
```

Install Nginx Ingress controller
```bash
helm install nginx-ingress ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace
```
