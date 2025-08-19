#!/usr/bin/env bash
set -e

# Build osmosisd (CLI)
if ! command -v osmosisd >/dev/null 2>&1; then
  cd /workspaces || cd /workspace || true
  if [ ! -d osmosis ]; then
    git clone https://github.com/osmosis-labs/osmosis.git
  fi
  cd osmosis
  make build
  cp build/osmosisd /usr/local/bin/
fi

# Quick check
osmosisd version || true
rustc --version || true
cargo --version || true
go version || true
