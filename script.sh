#!/bin/bash
set -e

curl -sSfLo dcli  https://github.com/Dashlane/dashlane-cli/releases/download/v6.2405.0/dcli-linux-x64
chmod +x ./dcli
env_variables=$(printenv | sed 's;=.*;;' | sort)
for path in $env_variables; do
    # Check if the value of the variable starts with "dl://"
    if [[ "${!path}" =~ dl://* ]]; then
        # skipping dcli call temp

        echo "syncronizing .."
        ./dcli sync
        echo "reading password .. "
        echo "$path=$(./dcli read ${!path})" >> "$GITHUB_OUTPUT"
    fi
done
