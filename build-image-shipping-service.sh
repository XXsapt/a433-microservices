#!/bin/bash

# Gunakan variabel dari environment
IMAGE_NAME="ghcr.io/$USERNAME/$REPO1"
TAG="latest"

# Login ke GitHub Container Registry
echo "Login ke GitHub Container Registry"
echo $GH_TOKEN | docker login ghcr.io -u $USERNAME --password-stdin

# Build Docker image
echo "Membangun Docker image..."
docker build -t $IMAGE_NAME:$TAG .

# Push Docker image ke GHCR
echo "Push image ke GHCR..."
docker push $IMAGE_NAME:$TAG

echo "Selesai!"
