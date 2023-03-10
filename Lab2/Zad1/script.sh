#!/bin/bash
docker-compose up -d
docker ps

curl http://localhost:8000

echo ""

docker-compose down