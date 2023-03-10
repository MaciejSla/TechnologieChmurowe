#!/bin/bash
docker-compose up -d

curl http://localhost:8000

echo ""

docker-compose down