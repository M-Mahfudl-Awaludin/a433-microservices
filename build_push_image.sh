#!/bin/bash

# ========================================
# Script untuk build dan push Docker image
# ========================================

# Variabel username Docker Hub
DOCKER_USERNAME=USERNAME_DOCKERHUB

# Nama image
IMAGE_NAME=item-app

# Tag image
IMAGE_TAG=v1

# ----------------------------------------
# Build Docker Image dari Dockerfile
# ----------------------------------------
docker build -t $IMAGE_NAME:$IMAGE_TAG .

# ----------------------------------------
# Melihat daftar Docker image di lokal
# ----------------------------------------
docker images

# ----------------------------------------
# Tag image agar sesuai dengan Docker Hub
# ----------------------------------------
docker tag $IMAGE_NAME:$IMAGE_TAG $DOCKER_USERNAME/$IMAGE_NAME:$IMAGE_TAG

# ----------------------------------------
# Login ke Docker Hub
# ----------------------------------------
docker login

# ----------------------------------------
# Push image ke Docker Hub
# ----------------------------------------
docker push $DOCKER_USERNAME/$IMAGE_NAME:$IMAGE_TAG
