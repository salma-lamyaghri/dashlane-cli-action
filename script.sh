#!/bin/bash
set -e

env_variables=$(printenv | sed 's;=.*;;' | sort)
for path in $env_variables; do
    # Check if the value of the variable starts with "dl://"
    if [[ "${!path}" =~ dl://* ]]; then
        echo "$path=$(./dcli read ${!path})" >> "$GITHUB_OUTPUT";
    fi;
done