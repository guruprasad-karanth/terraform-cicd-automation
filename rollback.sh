#!/bin/bash
# Rollback to previous Docker image
# Usage: ./rollback.sh <commit-sha>

if [ -z "$1" ]; then
  echo "Usage: ./rollback.sh <commit-sha>"
  exit 1
fi

SSH_KEY=~/.ssh/id_rsa
EC2_HOST=3.239.193.6

ssh -i $SSH_KEY ec2-user@$EC2_HOST << ENDSSH
  docker stop myapp || true
  docker rm myapp || true
  docker run -d --name myapp -p 3000:3000 myapp:$1
  echo "Rolled back to $1"
ENDSSH
