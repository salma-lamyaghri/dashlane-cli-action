#!/bin/bash
# shellcheck disable=SC2086
set -e

assert_secret() {
  if [ "$(printenv $1)" != "$2" ]; then
    echo -e "Expected $1 to be set to:\n$2\nBut got:\n$(printenv $1)"
    exit 1
  fi
}

assert_secret "SECRET" "action_test"


