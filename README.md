# forotecnoloxico-contenedores-k8s

## Demo Docker

Lanzar contenedor debian 9:
```
docker run -it debian:9 bash
```

Lanzar contenedor Windows:
```
docker run mcr.microsoft.com/windows/servercore:ltsc2022
```

Crear imagen de echo service:
```
docker build -t pnieto/echo:v1 .
```

## Prueba mononodo

Lanzar cluster con Minikube:
```
minikube start
```

Despligue addons:
```
minikube addons enable ingress
minikube addons enable ingress-dns
```

Cargar deployments:
```
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml
```

Actualizar deployment:
```
kubectl apply -f deployment.yaml
kubectl rollout status deployment.v1.apps/echo
```

Rollback:
```
kubectl rollout undo deployment.v1.apps/echo
```

## Prueba multinodo
```
minikube start --nodes 3 -p multinode
```

Obtener nodos cluster:
```
kubectl get nodes
```

```
minikube ip -p multinode
```

Cargar deployments:
```
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

Borrar nodo:
```
kubectl delete node minikube-m03
docker stop minikube-m03
```

