#!/bin/bash

# Build Docker image untuk backend
echo "Building Docker image for backend..."
docker build -t ghcr.io/${GITHUB_USERNAME}/karsajobs:latest .

# Karena login sudah dilakukan di langkah sebelumnya di workflow,
# kita langsung push image ke GitHub Container Registry
echo "Pushing backend image..."
docker push ghcr.io/${GITHUB_USERNAME}/karsajobs:latest

echo "Docker images successfully pushed to GitHub Packages!"
