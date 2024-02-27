#!/bin/bash

if [ -z "$name" ]
then
    echo "Error : The path is null or empty"
else
    SECRET=$(dcli read $1) #pass credentials ? 
    echo "SECRET=$SECRET" >> "$GITHUB_OUTPUT"
fi
