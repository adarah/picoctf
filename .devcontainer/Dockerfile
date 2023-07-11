# Bullseye is needed for ARM64 support
# https://hub.docker.com/_/microsoft-devcontainers?tab=description
FROM mcr.microsoft.com/devcontainers/python:3.11-bullseye AS base
WORKDIR /tmp
USER vscode

# Install poetry
ENV PATH="${HOME}/.local/bin:${PATH}"
RUN curl -sSL https://install.python-poetry.org | python3 - \
    && poetry completions bash >> ~/.bash_completion

# Install dependencies
COPY . ./
RUN poetry install


