FROM mcr.microsoft.com/devcontainers/base:jammy AS base
SHELL ["/bin/bash", "-c"] 
WORKDIR /tmp

# Install poetry
RUN curl -sSL https://install.python-poetry.org | python3 - \
    && source ${HOME}/.profile \
    && poetry completions bash >> ~/.bash_completion

# Install dependencies
COPY . ./
RUN poetry install


