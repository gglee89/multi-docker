#!/bin/bash
########################################
# Put this on a Server
# run chmod +x deploy_app.sh to make the script executable
#
# Execute this script:  ./deploy_app.sh
#
########################################

set -e

echo "Deploying multi-docker"

docker run -d gustalee/multi-client
docker run -d --rm=true -p 80:8000 gustavolee/multi-nginx
docker run -d gustalee/multi-server
docker run -d gustalee/multi-worker

docker ps -a