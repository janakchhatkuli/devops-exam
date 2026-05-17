# Container Debugging Guide

## Common Container Failures

### 1. Port Already in Use
```
Error: java.net.BindException: Address already in use: bind
```
Fix:
```bash
docker ps
docker stop <container_id>
docker rm <container_id>
docker run -p 8080:8080 test-1
```

### 2. Out of Memory
```
java.lang.OutOfMemoryError: Java heap space
```
Fix:
```bash
docker run -m 512m -p 8080:8080 test-1
```

### 3. Database Connection Failed
```
Connection refused: connect
SQLException: Cannot get a connection
```
Fix:
```bash
docker-compose ps
docker-compose logs db
docker-compose up -d
```

### 4. Image Not Found
```
Error response: pull access denied
```
Fix:
```bash
docker build -t test-1 .
docker run -p 8080:8080 test-1
```

### 5. File Not Found in Container
```
FileNotFoundError: test.java
```
Fix:
- Check Dockerfile COPY paths
- Rebuild: `docker build -t test-1 .`

## Debug Commands

```bash
docker ps -a
docker logs <container_id>
docker logs -f <container_id>
docker inspect <container_id>
docker stats <container_id>
docker exec -it <container_id> /bin/bash
```

## Step-by-step Debug

1. Check if container is running: `docker ps`
2. If not running, check logs: `docker logs <id>`
3. If error, identify issue type
4. Apply fix
5. Test: `docker run -p 8080:8080 test-1`
