#!/bin/bash

# Konfigurasi
GITHUB_USERNAME="xxsapt"
GITHUB_TOKEN="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"
IMAGE_NAME_BACKEND="ghcr.io/xxsapt/karsajobs:latest"

# Build Docker image untuk backend
echo "Building Docker image for backend..."
docker build -t $IMAGE_NAME_BACKEND .

# Login ke GitHub Container Registry
echo "Logging in to GitHub Packages..."
echo $GITHUB_TOKEN | docker login ghcr.io -u $GITHUB_USERNAME --password-stdin

# Push images ke GitHub Packages
echo "Pushing backend image..."
docker push $IMAGE_NAME_BACKEND

echo "Docker images successfully pushed to GitHub Packages!"
