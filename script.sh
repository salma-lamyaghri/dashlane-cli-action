#!/bin/bash
set -e

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
