#!/bin/bash

# Fetch the latest release version from GitHub API
VERSION=$(curl -s https://api.github.com/repos/Byte-Nova/Rimworld-Together/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')

# Check if the version was fetched correctly
if [ -z "$VERSION" ]; then
  echo "Failed to fetch version from GitHub"
  exit 1
fi

# Build the Docker image with the version as a tag
docker build --build-arg VERSION=$VERSION -t rimworld-together:$VERSION .

# Tag the image with 'latest' as well
docker tag rimworld-together:$VERSION rimworld-together:latest

echo "Docker image built and tagged as rimworld-together:$VERSION and rimworld-together:latest"
