# Bullseye is needed for ARM64 support
# https://hub.docker.com/_/microsoft-devcontainers?tab=description
FROM mcr.microsoft.com/devcontainers/python:3.11-bullseye AS base
WORKDIR /tmp
USER vscode
SHELL ["/bin/bash", "--login", "-c"]

# Install poetry
ENV DEBIAN_FRONTEND=non-interactive 
RUN curl -sSL https://install.python-poetry.org | python3 -

RUN echo "wireshark-common wireshark-common/install-setuid boolean false" | sudo debconf-set-selections
RUN sudo apt-get update && sudo apt-get install -y \
    netcat \
    sleuthkit \
    autopsy \
    exiftool \
    tshark