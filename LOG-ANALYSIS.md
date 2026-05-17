# Log Analysis

## Common Failures

- **Database connection timeout** → DB container down or wrong credentials
- **Out of memory** → Heap size too small or memory leak
- **502 Bad Gateway** → Backend service crashed
- **Slow queries** → Missing indexes or inefficient SQL

## How to check

```bash
./analyze-logs.sh
docker logs test-app
docker logs test-db
docker ps
```

## Root cause check

1. Check error logs for failure type
2. Run `docker ps` to see which service is down
3. Check container logs for details
4. Review recent code changes

