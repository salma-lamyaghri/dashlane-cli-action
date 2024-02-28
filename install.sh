#!/bin/bash
set -e

curl -0 https://github.com/Dashlane/dashlane-cli/releases/download/v6.2405.0/dcli-linux-x64
mv dcli-linux-x64 dcli 
chmod +x ./dcli
