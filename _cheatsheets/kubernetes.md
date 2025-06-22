---
title: Kubernetes
excerpt: Kubernetes is an open-source container orchestration platform.
---

An open-source container orchestration platform. Automates deployment, scaling, and management of containerized applications.
Provides a framework to run distributed systems resiliently and efficiently.

## Basics

### Kubernetes Components
- **Master Node:**
  - **API Server:** Exposes the Kubernetes API.
  - **Etcd:** Key-value store for all cluster data.
  - **Scheduler:** Schedules the workload.
  - **Controller Manager:** Manages controllers.
- **Worker Node:**
  - **Kubelet:** Ensures containers are running.
  - **Kube-Proxy:** Manages networking for services.
  - **Container Runtime:** Runs the containers (e.g., Docker).

### Key Concepts
- **Pod:** The smallest deployable unit.
- **Service:** Exposes a set of Pods as a network service.
- **Namespace:** Provides a scope for resources.
- **ConfigMap:** Stores configuration data as key-value pairs.
- **Secret:** Stores sensitive data.

## Commands

### Cluster Management
```sh
# Create a cluster
kind create cluster

# Delete a cluster
kind delete cluster

# Get cluster info
kubectl cluster-info
```

### Node Management
```sh
# Get nodes
kubectl get nodes

# Describe a node
kubectl describe node <node-name>
```

### Pod Management
```sh 
# Get pods
kubectl get pods

# Get pods in a specific namespace
kubectl get pods -n <namespace>

# Describe a pod
kubectl describe pod <pod-name>

# Create a pod
kubectl run <pod-name> --image=<image-name>

# Delete a pod
kubectl delete pod <pod-name>
```

### Service Management
```sh 
# Get services
kubectl get svc

# Describe a service
kubectl describe svc <service-name>

# Expose a pod as a service
kubectl expose pod <pod-name> --type=<type> --port=<port>

# Delete a service
kubectl delete svc <service-name>
```

### Namespace Management
```sh 
# Get namespaces
kubectl get namespaces

# Describe a namespace
kubectl describe namespace <namespace-name>

# Create a namespace
kubectl create namespace <namespace-name>

# Delete a namespace
kubectl delete namespace <namespace-name>

# Switch to a different namespace
kubectl config set-context --current --namespace=<namespace-name>
```

### Deployment Management
```sh 
# Get deployments
kubectl get deployments

# Describe a deployment
kubectl describe deployment <deployment-name>

# Create a deployment
kubectl create deployment <deployment-name> --image=<image-name>

# Update a deployment
kubectl set image deployment/<deployment-name> <container-name>=<new-image>

# Delete a deployment
kubectl delete deployment <deployment-name>
```

## Configuration

### YAML Manifest
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: mypod
spec:
  containers:
    - name: mycontainer
      image: myimage
```

### ConfigMap
```sh 
# Create a ConfigMap from a file
kubectl create configmap <config-name> --from-file=<file-path>

# Get ConfigMaps
kubectl get configmaps

# Describe a ConfigMap
kubectl describe configmap <config-name>
```

### Secret
```sh 
# Create a secret from a file
kubectl create secret generic <secret-name> --from-file=<file-path>

# Get secrets
kubectl get secrets

# Describe a secret
kubectl describe secret <secret-name>
```

### Troubleshooting
```sh 
# Check cluster logs
kubectl logs <pod-name>

# Get events
kubectl get events

# Describe resources
kubectl describe <resource-type> <resource-name>
```

### Common Operations
```sh 
# Apply a configuration
kubectl apply -f <file.yaml>

# Delete a resource
kubectl delete -f <file.yaml>

# Scale a deployment
kubectl scale deployment <deployment-name> --replicas=<count>

# Port forward
kubectl port-forward <pod-name> <local-port>:<remote-port>
```

## Extensions
1. kubectx/kubens: Quickly switch between clusters and namespaces.
2. k9s: Terminal UI to manage Kubernetes clusters.
