#!/bin/bash

echo "=== Application Log Analysis ==="
echo ""

echo "1. Error Summary"
echo "Errors found:"
grep "ERROR" app.log | wc -l
echo ""

echo "2. Errors with timestamps"
grep "ERROR" app.log
echo ""

echo "3. Warnings"
grep "WARN" app.log
echo ""

echo "4. Database connection issues"
grep -i "database\|connection\|timeout" app.log
echo ""

echo "5. Memory issues"
grep -i "memory\|heap\|OutOfMemory" app.log
echo ""

echo "6. Network/Nginx issues"
grep -i "nginx\|502\|gateway\|upstream" app.log
echo ""

echo "7. Service failures"
grep -i "crashed\|failed\|error" app.log | head -5
echo ""

echo "8. Recovery events"
grep "recovered\|restored\|restarted" app.log
