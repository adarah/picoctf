FROM mcr.microsoft.com/devcontainers/base:jammy AS base
# Install poetry
RUN curl -sSL https://install.python-poetry.org | python3 -
RUN poetry completions bash >> ~/.bash_completion

# Install dependencies
RUN poetry install


