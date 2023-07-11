FROM mcr.microsoft.com/devcontainers/base:jammy AS base
WORKDIR /tmp

# Install poetry
ENV PATH="/root/.local/bin:${PATH}"
RUN curl -sSL https://install.python-poetry.org | python3 - \
    && poetry completions bash >> ~/.bash_completion

# Install dependencies
COPY . ./
RUN poetry install


