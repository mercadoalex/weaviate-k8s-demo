#!/bin/bash

# This script automates the installation of Weaviate in a local Kubernetes cluster.

# Exit immediately if a command exits with a non-zero status.
set -e

# Function to apply Kubernetes manifests
apply_manifests() {
    echo "Applying Kubernetes manifests..."
    kubectl apply -f ../manifests/weaviate-configmap.yaml
    kubectl apply -f ../manifests/weaviate-deployment.yaml
    kubectl apply -f ../manifests/weaviate-service.yaml
}

# Function to check the status of the Weaviate deployment
check_deployment_status() {
    echo "Checking the status of the Weaviate deployment..."
    kubectl rollout status deployment/weaviate
}

# Main script execution
apply_manifests
check_deployment_status

echo "Weaviate installation completed successfully!"