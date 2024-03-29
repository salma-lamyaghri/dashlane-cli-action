#!/bin/bash
set -e

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Get runner's architecture
    ARCH=$(uname -m)

    if [[ "$ARCH" != "x86_64" ]] && [[ "$ARCH" != "aarch64" ]]; then
        echo "Unsupported architecture for the Dashlane CLI: $ARCH."
        exit 1
    fi

    curl -sSfLo dcli  https://github.com/Dashlane/dashlane-cli/releases/download/v6.2405.0/dcli-linux-x64

elif [[ "$OSTYPE" == "darwin"* ]]; then
    curl -sSfLo dcli  https://github.com/Dashlane/dashlane-cli/releases/download/v6.2405.0/dcli-macos-arm64
else
    echo "Operating system not supported yet for this GitHub Action: $OSTYPE."
    exit 1
fi

chmod +x ./dcli
