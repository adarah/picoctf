# Bullseye is needed for ARM64 support
# https://hub.docker.com/_/microsoft-devcontainers?tab=description
FROM mcr.microsoft.com/devcontainers/python:3.11-bullseye AS base
WORKDIR /tmp
USER vscode
SHELL ["/bin/bash", "--login", "-c"]

# Install poetry
ENV PATH="$HOME/.local/bin:$PATH"
RUN curl -sSL https://install.python-poetry.org | python3 -
# This command is using a separate RUN statemnet to start a new shell, and
# thus obtain access to poetry
RUN poetry completions bash >> ~/.bash_completion

# Install dependencies
COPY . ./
RUN poetry install


