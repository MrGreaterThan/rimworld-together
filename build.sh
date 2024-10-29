#!/bin/bash

# GitHub Container Registry (GHCR) username (replace with your username)
GHCR_USERNAME="MrGreaterThan"
GHCR_REPOSITORY="rimworld-together"

# Fetch the latest release version from GitHub API
VERSION=$(curl -s https://api.github.com/repos/Byte-Nova/Rimworld-Together/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')

# Check if the version was fetched correctly
if [ -z "$VERSION" ]; then
  echo "Failed to fetch version from GitHub"
  exit 1
fi

# Build the Docker image and tag it for GHCR with the version as a tag
docker build --build-arg VERSION=$VERSION -t ghcr.io/$GHCR_USERNAME/$GHCR_REPOSITORY:$VERSION .

# Tag the image with 'latest' as well
docker tag ghcr.io/$GHCR_USERNAME/$GHCR_REPOSITORY:$VERSION ghcr.io/$GHCR_USERNAME/$GHCR_REPOSITORY:latest

# Output message
echo "Docker image built and tagged as ghcr.io/$GHCR_USERNAME/$GHCR_REPOSITORY:$VERSION and ghcr.io/$GHCR_USERNAME/$GHCR_REPOSITORY:latest"
