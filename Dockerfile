# Pakai base image Debian
FROM debian:bullseye-slim

# Update dan install tool dasar buat web project lo
RUN apt-get update && apt-get install -y \
    curl \
    git \
    procps \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace
