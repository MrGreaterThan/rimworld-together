# Rimworld Together Game Server

This repository hosts the **Rimworld Together** game server Docker image and provides multiple ways to deploy and run the server:

1. Using `docker run`
2. Using `docker-compose`
3. Deploying on **Unraid** via a custom app template (see [unraid-template/README.md](unraid-template/README.md))

## Prerequisites

Before running the Rimworld Together game server, ensure you have:

- Docker installed on your system (for Docker or Docker Compose setups).
- An Unraid server (for Unraid setups).

---

## Running the Game Server with Docker

You can quickly get the **Rimworld Together** game server up and running using `docker run`.

### 1. Using `docker run`

You can use the following command to run the Rimworld Together game server with Docker:

```bash
docker run -d \
  --name rimworld-together \
  -p 25555:25555 \
  ghcr.io/MrGreaterThan/rimworld-together:latest
```


## Running the Game Server with Docker Compose

The repository includes a `docker-compose.yml` file to easily set up and run the **Rimworld Together** game server. Follow the instructions below to use the file, along with general tips and warnings for Docker Compose users.

### 1. Clone the Repository and Start the Server with Docker Compose

First, clone the **Rimworld Together** repository:

```bash
git clone https://github.com/MrGreaterThan/rimworld-together.git
```

### 2. cd into ./rimworld-together and adjust the Provided `docker-compose.yml`
```bash
cd rimworld-together
nano docker-compose.yml
```
- The `docker-compose.yml` file is preconfigured to pull the **Rimworld Together** Docker image from **GitHub Container Registry (GHCR)** and expose the necessary ports.
- You can use it as-is or adjust it to suit your setup (e.g., change the port mapping or volume locations).
- If you wish to use a specific version of the game server, you can edit the image tag in the `docker-compose.yml` file.

### 3. Start the Server with Docker Compose

To start the game server using Docker Compose, navigate to the directory where the `docker-compose.yml` file is located and run the following command:

```bash
docker-compose up -d
```

### Container Updates
To update the game server to a new version, you will need to pull the latest image (`docker-compose pull`) and restart the container (`docker-compose up -d`).

### Data Persistence
Be cautious when using `docker-compose down -v`, as this will remove the volumes and delete all stored data. If you want to preserve game data, avoid the `-v` option.

### Logs
You can view real-time logs of the game server by running `docker-compose logs -f`. This is useful for monitoring the server or troubleshooting any issues.


