FROM mcr.microsoft.com/devcontainers/base:jammy AS base
WORKDIR /tmp

# Install poetry
ENV PATH="${PATH}:/root/.poetry/bin"
RUN curl -sSL https://install.python-poetry.org | python3 - \
    && poetry completions bash >> ~/.bash_completion

# Install dependencies
COPY . ./
RUN poetry install


