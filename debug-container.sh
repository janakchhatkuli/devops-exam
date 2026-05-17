#!/bin/bash

# Container debugging script

echo "=== Container Debug Info ==="
echo ""

echo "1. Running containers:"
docker ps
echo ""

echo "2. All containers:"
docker ps -a
echo ""

echo "3. Docker images:"
docker images
echo ""

echo "4. Container stats:"
docker stats --no-stream
echo ""

echo "5. Recent logs (app):"
docker logs --tail 20 test-app 2>/dev/null || echo "Container not found"
echo ""

echo "6. Network inspection:"
docker network ls
echo ""

echo "7. Volume check:"
docker volume ls
echo ""

echo "8. System info:"
docker info | grep -E "Containers|Running|Images"
