#!/bin/bash

git pull origin main

docker build -t test-1 .

docker stop test-app 2>/dev/null || true
docker rm test-app 2>/dev/null || true

docker-compose up -d

echo "Deployment done"

