#!/bin/bash

docker-compose down

docker rmi test-1 2>/dev/null || true

git checkout HEAD~1

docker-compose up -d

echo "Rollback done"

