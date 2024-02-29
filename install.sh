#!/bin/bash
set -e

if [[ "$ARCH" != "amd64" ]] && [[ "$ARCH" != "arm64" ]]; then
  echo "Unsupported architecture for the Dashlane CLI: $ARCH."
  exit 1
fi

curl -sSfLo dcli  https://github.com/Dashlane/dashlane-cli/releases/download/v6.2405.0/dcli-linux-x64
chmod +x ./dcli
