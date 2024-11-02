# Stage 1: Build stage to download and unzip the file
FROM debian:bullseye-slim as build

# Install curl, unzip, and libicu
RUN apt-get update && apt-get install -y curl unzip libicu-dev && rm -rf /var/lib/apt/lists/*

# Download and extract the file
WORKDIR /build
RUN curl -L -o linux-x64.zip https://github.com/Byte-Nova/Rimworld-Together/releases/latest/download/linux-x64.zip \
    && unzip linux-x64.zip \
    && rm linux-x64.zip  # Remove the zip file after extraction

# Stage 2: Final image
FROM debian:bullseye-slim

# Install libicu in the final image
RUN apt-get update && apt-get install -y libicu-dev && rm -rf /var/lib/apt/lists/*

# Create directory for the game server
RUN mkdir -p /opt/rimworld-together

# Copy the extracted files (without the zip) to the game server directory
COPY --from=build /build /opt/rimworld-together

# Set restrictive permissions on GameServer executable
RUN chmod 750 /opt/rimworld-together/GameServer

# Set the working directory
WORKDIR /opt/rimworld-together/Data

# Initialize the server by running it once during the build and passing "quit" to close it
RUN echo "quit" | /opt/rimworld-together/GameServer || true

# Expose the necessary port for the GameServer
EXPOSE 25555

# Expose each of the persistent directories
VOLUME ["/opt/rimworld-together/Data"]

#Set the entry point
ENTRYPOINT ["/opt/rimworld-together/GameServer"]
