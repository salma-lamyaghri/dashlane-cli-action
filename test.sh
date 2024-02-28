#!/bin/bash
set -e

echo "ACTION_SECRET -> $ACTION_SECRET";
echo "value 1-> ${!1}";
echo "value 1-> ${!2}";
assert_secret() {
  if [ "$(printenv $1)" != "$2" ]; then
    echo -e "Expected $1 to be set to:\n$2\nBut got:\n$(printenv $1)"
    exit 1
  fi
}

assert_secret "ACTION_SECRET" "action_test"


