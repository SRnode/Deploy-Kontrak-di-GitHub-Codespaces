FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Tools: Rust, Go, build essentials, jq, unzip, git
RUN apt-get update && \
    apt-get install -y build-essential curl jq unzip git golang && \
    rm -rf /var/lib/apt/lists/*

# Rustup
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# CosmWasm target
RUN rustup target add wasm32-unknown-unknown
