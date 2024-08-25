#!/bin/bash
set -e

IMAGE_TAG=$(date +%s)
ECR_URL=ecr_url
IMAGE_NAME=image_name

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_URL
docker build -t $IMAGE_NAME:$IMAGE_TAG $HOME/ecs-terraform/container-docker/.
docker tag $IMAGE_NAME:$IMAGE_TAG $ECR_URL/$IMAGE_NAME:$IMAGE_TAG
docker push $ECR_URL/$IMAGE_NAME:$IMAGE_TAG

terraform -chdir=$HOME/ecs-terraform/ecs apply -var "image_tag=$IMAGE_TAG"

# Checar como e onde armazenar env vars
# Armazenar estado ddo terraform no s3 ou dynamodb
