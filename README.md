# forotecnoloxico-contenedores-k8s

Lanzar contenedor debian 9:
```
docker run -it debian:9 bash
```

Lanzar contenedor Windows:
```
docker run mcr.microsoft.com/windows/servercore:ltsc2022
```

Lanzar cluster con Minikube:
```
minikube start --nodes 3
```

Obtener nodos cluster:
```
kubectl get nodes
```

Despligue addons:
```
minikube addons enable ingress
minikube addons enable ingress-dns
```
Agregar configuración dominio *.test (https://minikube.sigs.k8s.io/docs/handbook/addons/ingress-dns/):
```
export KUBE_EDITOR="emacs" 
```
kubectl edit configmap coredns -n kube-system
```
    test:53 {
            errors
            cache 30
            forward . 192.168.49.2
    }
```
Cargar deployments:
```
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml
```
Actualizar deployment:
```
kubectl rollout restart deployment.v1.apps/echo
```