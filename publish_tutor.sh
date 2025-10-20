#!/usr/bin/env bash
set -euo pipefail
read -rp "GitHub username: " GIT_USER
read -rp "Repository name (default: reliable-api-demo): " REPO_NAME
REPO_NAME="${REPO_NAME:-reliable-api-demo}"
read -rp "Docker Hub username: " DOCKER_USER
read -rp "Image name (default: reliable-api-demo:latest): " IMAGE
IMAGE="${IMAGE:-reliable-api-demo:latest}"
REPO="https://github.com/$GIT_USER/$REPO_NAME.git"
git init
git add .
git commit -m "Initial commit" || true
git branch -M main || true
git remote remove origin >/dev/null 2>&1 || true
git remote add origin "$REPO" || true
git push -u origin main
docker build -t "$DOCKER_USER/$IMAGE" ./assets/fastapi_app
docker push "$DOCKER_USER/$IMAGE"
