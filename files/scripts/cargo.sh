#!/usr/bin/env bash

set -oue pipefail

PATH="$PATH::/root/.cargo/bin"
curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash
