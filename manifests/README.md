# Weaviate Kubernetes Deployment Manifests

This directory contains the Kubernetes manifests required to deploy Weaviate in a local Kubernetes cluster. Below is a brief overview of each manifest file included in this directory:

## Files Overview

1. **weaviate-deployment.yaml**: 
   - This file defines the Kubernetes deployment for Weaviate. It specifies the desired state for the Weaviate pods, including the container image, resource requests, and environment variables necessary for the application to run.

2. **weaviate-service.yaml**: 
   - This file creates a Kubernetes service for Weaviate. It exposes the Weaviate deployment, allowing communication with other services or external clients. This is essential for accessing the Weaviate API.

3. **weaviate-configmap.yaml**: 
   - This file sets up a ConfigMap for Weaviate, which is used to store configuration data that can be consumed by the Weaviate pods. It includes settings such as database connection details and other environment-specific configurations.

## Deployment Instructions

To deploy Weaviate in your local Kubernetes cluster, follow these steps:

1. Ensure that you have a local Kubernetes cluster running (e.g., using Docker Desktop).
2. Apply the ConfigMap:
   ```
   kubectl apply -f weaviate-configmap.yaml
   ```
3. Deploy Weaviate:
   ```
   kubectl apply -f weaviate-deployment.yaml
   ```
4. Create the service:
   ```
   kubectl apply -f weaviate-service.yaml
   ```

## Prerequisites

- A running Kubernetes cluster (e.g., Docker Desktop).
- `kubectl` command-line tool installed and configured to interact with your cluster.

## Additional Information

For more details on configuring Weaviate and its usage, refer to the main project README.md file located at the root of the project directory.