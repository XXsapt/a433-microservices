#!/bin/bash

# Konfigurasi
GITHUB_USERNAME="XXsapt"
GITHUB_TOKEN="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"
IMAGE_NAME_FRONTEND="ghcr.io/xxsapt/karsajobs-ui:latest"

# Build Docker image untuk frontend
echo "Building Docker image for frontend..."
docker build -t $IMAGE_NAME_FRONTEND .

# Login ke GitHub Container Registry
echo "Logging in to GitHub Packages..."
echo $GITHUB_TOKEN | docker login ghcr.io -u $GITHUB_USERNAME --password-stdin

# Push image ke GitHub Packages
echo "Pushing frontend image..."
docker push $IMAGE_NAME_FRONTEND

echo "Frontend Docker image successfully pushed to GitHub Packages!"