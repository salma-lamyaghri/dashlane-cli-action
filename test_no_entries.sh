#!/bin/bash
set -e

assert_no_secret() {
    if [ -z "$ACTION_SECRET_PASSWORD" ]; then
        exit 0
    fi
}

assert_secret "ACTION_SECRET_PASSWORD" 
 
