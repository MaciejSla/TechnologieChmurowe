#!/bin/bash
docker-compose up -d
echo ""
docker ps
echo ""
curl http://localhost:8000
echo ""
docker-compose down