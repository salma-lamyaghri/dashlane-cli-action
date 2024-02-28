#!/bin/bash
set -e

env_variables=$(printenv | sed 's;=.*;;' | sort)
for path in $env_variables; do
    # Check if the value of the variable starts with "dl://"
    if [[ "${!path}" =~ dl://* ]]; then
        echo "dcli read ${!path}";
        ./dcli sync;
        # ./dcli p -o json;
        # echo "reading password";
        # ./dcli read ${!path};
        echo "$path=$(./dcli read ${!path})"
        echo "export $path=$(./dcli read ${!path})" >> "$GITHUB_OUTPUT";
    fi;
done