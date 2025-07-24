FROM ubuntu:22.04

# Update and install base dependencies
RUN apt update && apt install -y \
    build-essential \
    vim \
    cmake \
    git \
    curl \
    python3-pip \
    sudo \
    unzip \
    wget \
    ca-certificates

# Install Conan
RUN pip3 install conan

# Create dev user and set up shell environment
RUN useradd -ms /bin/bash devuser \
    && echo "devuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to non-root user
USER devuser

# Set working directory
WORKDIR /home/devuser/visagevault

# Set terminal to support full color
ENV TERM xterm-256color
