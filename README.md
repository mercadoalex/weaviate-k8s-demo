# Weaviate Kubernetes Demo

This project provides a comprehensive guide to deploying Weaviate, a vector database, in a local Kubernetes cluster using Docker Desktop. The following sections outline the project structure, prerequisites, and instructions for deploying Weaviate.

## Project Structure

The project is organized as follows:

```
weaviate-k8s-demo
├── manifests
│   ├── weaviate-deployment.yaml      # Deployment manifest for Weaviate
│   ├── weaviate-service.yaml         # Service manifest for Weaviate
│   ├── weaviate-configmap.yaml       # ConfigMap for Weaviate configuration
│   └── README.md                     # Documentation for the manifests directory
├── scripts
│   └── install-weaviate.sh           # Script to automate Weaviate installation
├── .dockerignore                      # Files to ignore when building Docker images
├── .gitignore                         # Files to ignore in Git
└── README.md                          # Overall documentation for the project
```

## Prerequisites

Before you begin, ensure you have the following installed:

- Docker Desktop with Kubernetes enabled
- kubectl command-line tool
- Access to a terminal or command prompt

## Installation Instructions

1. **Clone the Repository**: Start by cloning this repository to your local machine.

   ```bash
   git clone <repository-url>
   cd weaviate-k8s-demo
   ```

2. **Apply the Manifests**: Use the provided script to deploy Weaviate in your local Kubernetes cluster.

   ```bash
   ./scripts/install-weaviate.sh
   ```

3. **Verify the Deployment**: Check the status of the Weaviate pods and services.

   ```bash
   kubectl get pods
   kubectl get services
   ```

## Usage

Once deployed, you can interact with Weaviate through the exposed service. Refer to the Weaviate documentation for details on how to use the database and its features.

## Additional Information

For more details on each manifest file, please refer to the `manifests/README.md` file. This file contains specific instructions on how to modify and apply the individual Kubernetes manifests.

Feel free to contribute to this project by submitting issues or pull requests. Happy learning!

> 📖 **Read more:** Check out our detailed article on [Medium](https://medium.com/dummy-link-to-weaviate-k8s-article) for step-by-step explanations and practical tips.
