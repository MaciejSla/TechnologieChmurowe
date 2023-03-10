#!/bin/bash
echo "1. Create container"
docker-compose up -d
echo ""
echo "2. Show active containers"
docker ps
echo ""
echo "3. Curl localhost:8080"
docker exec -d zad3-db-1 sh -c 'mongosh < db/dbTest.js'
sleep 10
curl http://localhost:8080
echo ""
echo ""
echo "4. Remove container"
docker-compose down