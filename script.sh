#!/bin/bash
set -e

env_variables=$(printenv | sed 's;=.*;;' | sort)
for path in $env_variables; do
    # Check if the value of the variable starts with "dl://"
    if [[ "${!path}" =~ dl://* ]]; then
        # skipping dcli call temp

        echo "syncronizing .."
        ./dcli sync
        # ./dcli p -o json;
        echo "reading password .. "
        echo "$path=$(./dcli read ${!path})" >> "$GITHUB_OUTPUT"
        #echo "$path=action_test" >> "$GITHUB_ENV";
    fi
done
